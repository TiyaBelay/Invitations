require 'rails_helper'

describe DashboardsController do
  describe '#create' do
    context 'when user is signed in' do
      let(:event) { post :create, params: { event_name: 'GrumpyCat Graduation Party', event_type: 'graduation' } }

      it 'can create an event and stay on the same page' do
        expect { event }.to change{ Event.count }.by(1)
        expect(response).to redirect_to new_dashboard_path(event)
      end
    end
  end
end