require 'rails_helper'

RSpec.describe ReservationsController, :type => :controller do
  it { should use_before_action(:authenticate_user!) }

  describe 'GET #index' do
    pending 'Gets the list of reserved users for a event'
  end

  describe 'PUT #create' do
    pending 'Creates a reservation for a selected event'
  end

  describe 'DELETE #destroy' do
    pending 'Deletes a reservation'
  end
end
