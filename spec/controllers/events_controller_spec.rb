require 'rails_helper'
require 'pry'

describe EventsController, type: :controller do
  describe '#create' do
    context 'when user is signed in' do
      let(:event) do
        post :create, params: { event: {
          event_name: 'GrumpyCat Graduation Party',
          event_type: 'graduation'
        }}
      end

      it 'can create an event and stay on the same page' do
        expect { event }.to change { Event.count }.by(1)
        expect(response).to redirect_to new_dashboard_path
      end
    end
  end
end
