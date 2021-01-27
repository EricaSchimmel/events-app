require 'rails_helper'

RSpec.describe 'Reservations', :type => :request do
  describe 'GET #index' do
    pending 'it assigns a list of all reservations to @reservations' do
      create(:reservation)
      expect(assigns(:reservations)).to eq(Reservation.all)
    end

    pending 'it has a successful status' do
      expect(response).to have_http_status(:successful)
    end

    pending 'it returns an errors status with for a non-exiting event' do
      expect(reponse).to have_http_status(:error)
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
