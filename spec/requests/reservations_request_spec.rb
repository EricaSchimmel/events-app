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
    context 'when an existing reservation is specified' do
      let!(:reservation) { create(:reservation) }

      before(:each) { delete reservation_path, :params => { :id => reservation.id } }

      pending 'it responds with a successful status' do
        expect(response).to have_http_status(:successful)
      end

      pending 'it will have the specified reservation be deleted after the request' do
        expect(reservation).to be_nil
      end
    end

    context 'when a non-existant reservation is specified' do
      pending 'it responds with a error status' do
        delete reservation_path, :params => { :id => 0 }

        expect(response).to have_http_status(:error)
      end
    end
  end
end
