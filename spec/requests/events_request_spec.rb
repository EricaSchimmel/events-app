require 'rails_helper'

RSpec.describe 'Events', :type => :request do
  describe 'GET #index' do
    # before(:each) { get events_path }

    pending 'it assigns all events to @events' do
      create(:event)
      expect(assigns(:events)).to eq(Event.all)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'GET #new' do
    # before(:each) { get new_event_path }

    pending 'it assigns a new empty event to @event' do
      expect(assigns(:event)).to be_a_new(Event)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'POST #create' do
    pending 'it successfully creates a event'
  end

  describe 'GET #edit' do
    # before(:each) { get edit_event_path }

    pending 'it assigns @event with an existing event' do
      event = create(:event)
      expect(assigns(:event)).to eq(event)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'PATCH #update' do
    pending 'it updates the existing event with new data'
  end

  describe 'DELETE #destroy' do
    pending 'it succesfully deletes the existing event'

    pending 'it returns an error status with a non-existing event' do
      expect(reponse).to have_http_status(:error)
    end
  end
end
