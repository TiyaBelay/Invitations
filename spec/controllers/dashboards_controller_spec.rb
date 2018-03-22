require 'rails_helper'
require 'pry'

describe DashboardsController do
  describe '#create' do
    context 'when user is signed in' do
      let(:dashboard) { Dashboard.desc(:updated_at).first }

      it 'can create an event' do
        post :create, params: FactoryBot.attributes_for(:event)
        expect(dashboard).to include(event_name: 'T & T Wedding')
      end
    end
  end
end