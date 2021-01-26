require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  describe 'GET #new' do
    it { should use_before_action(:authenticate_user!) }

    it 'assigns @event with a new empty event' do
      get :new
      expect(assigns(:event)).to be_a_new(Event)
    end

    it { should render_template('new') }
  end

  describe 'PUT #create' do
    it { should use_before_action(:authenticate_user!) }
  end

  describe 'GET #show' do
    it { should use_before_action(:set_event) }
    it { should render_template('show') }
  end

  describe 'GET #edit' do
    it { should use_before_action(:authenticate_user!) }
    it { should use_before_action(:set_event) }

    it { should render_template('edit') }
  end

  describe 'PUT #update' do
    it { should use_before_action(:authenticate_user!) }
  end

  describe 'DELETE #destroy' do
    it { should use_before_action(:authenticate_user!) }
    it { should use_before_action(:set_event) }
  end
end
