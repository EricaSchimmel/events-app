require 'rails_helper'

RSpec.describe 'Reservations', :type => :request do
  describe 'GET #index' do
    context 'a parameter with an existing event is specified' do
      pending 'it assigns a list of all reservations to @reservations' do
        event = create(:event)
        create(:reservation, event_id: event.id)

        # get request here

        expect(assigns(:reservations)).to eq(event.guests)
      end

      pending 'it has a successful status' do
        # get request here
        expect(response).to have_http_status(:successful)
      end
    end

    context 'a non-existing event is specified' do
      pending 'it returns an errors status with for a non-exiting event' do
        # get request here
        expect(reponse).to have_http_status(:error)
      end
    end
  end

  describe 'POST #create' do
    pending 'it creates a new reservation'

    pending 'it returns an errors status with for a non-exiting event' do
      expect(reponse).to have_http_status(:error)
    end
  end

  describe 'DELETE #destroy' do
    pending 'it deletes a existing reservation'

    pending 'it returns an error status with a non-existing reservation' do
      expect(reponse).to have_http_status(:error)
    end
  end
end
