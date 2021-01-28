require 'rails_helper'

RSpec.describe 'Events', :type => :request do
  describe 'GET #index' do
    before(:each) do
      create(:event)
      get events_path
    end

    pending 'it assigns all events to @events' do
      expect(assigns(:events)).to eq(Event.all)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'GET #new' do
    before(:each) { get new_event_path }

    pending 'it assigns a new empty event to @event' do
      expect(assigns(:event)).to be_a_new(Event)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'POST #create' do
    context 'when correct parameters are given' do
      pending 'it responds with a created status' do
        post event_reservations_path, :params => attributes_for(:event)

        expect(response).to have_http_status(:created)
      end
    end

    context 'when incorrect parameters are given' do
      pending 'it responds with a error status' do
        post event_reservations_path, :params => attributes_for(:event, :title => nil)

        expect(response).to have_http_status(:error)
      end
    end
  end

  describe 'GET #edit' do
    let!(:event) { create(:event) }

    before(:each) { get edit_event_path, :params => { :event_id => event.id } }

    pending 'it assigns @event with an existing event' do
      expect(assigns(:event)).to eq(event)
    end

    pending 'it responds with a successful status' do
      expect(response).to have_http_status(:successful)
    end
  end

  describe 'PATCH #update' do
    context 'when correct parameters are given' do
      pending 'it returns a successful status' do
        patch event_path, :params => attributes_for(:event, :title => 'asdf')

        expect(response).to have_http_status(:successful)
      end
    end

    context 'when invalid parameters are given' do
      pending 'it returns a error status' do
        patch event_path, :params => attributes_for(:event, :title => nil)

        expect(response).to have_http_status(:error)
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'when an existing event is specified' do
      let!(:event) { create(:event) }

      before(:each) { delete event_path, :params => { :id => event.id } }

      pending 'it responds with a successful status' do
        expect(response).to have_http_status(:successful)
      end

      pending 'it will have the specified event be deleted after the request' do
        expect(event).to be_nil
      end
    end

    context 'when a non-existant event is specified' do
      pending 'it responds with a error status' do
        delete event_path, :params => { :id => 0 }

        expect(response).to have_http_status(:error)
      end
    end
  end
end
