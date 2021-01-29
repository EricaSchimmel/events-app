require 'rails_helper'

RSpec.describe 'Reservations', :type => :request do
  describe 'GET #index' do
    context 'when a parameter with an existing event is specified' do
      let!(:event) { create(:event) }
      before(:each) { get event_reservations_path, :params => { :event_id => event.id } }

      pending 'it assigns a list of all reservations to @reservations' do
        create(:reservation, :event_id => event.id)
        expect(assigns(:reservations)).to eq(event.guests)
      end

      pending 'it has a successful status' do
        expect(response).to have_http_status(:successful)
      end
    end

    context 'when a non-existing event is specified' do
      pending 'it returns an errors status with for a non-exiting event' do
        get event_reservations_path, :params => { :event_id => 0 }
        expect(reponse).to have_http_status(:error)
      end
    end
  end

  describe 'POST #create' do
    context 'when a existing event is specified' do
      pending 'it responds with a created status' do
        event = create(:event)
        post event_reservations_path, :params => { :event_id => event.id }

        expect(response).to have_http_status(:created)
      end
    end

    context 'when a non-existant event is specified' do
      pending 'it responds with an error status' do
        post event_reservations_path, :params => { :event_id => 0 }
        expect(response).to have_http_status(:error)
      end
    end
  end

  describe 'DELETE #destroy' do
    pending 'it deletes a existing reservation'

    pending 'it returns an error status with a non-existing reservation' do
      expect(reponse).to have_http_status(:error)
    end
  end
end
