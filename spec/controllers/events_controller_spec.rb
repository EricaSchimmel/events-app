require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
    describe 'GET #new' do
        pending 'Renders the new template'
    end

    describe 'PUT #create' do
        pending 'Creates a new event succesfully'
    end

    describe 'GET #show' do
        it { should use_before_action(:set_event) }

        pending 'Renders the show template'
    end

    describe 'GET #edit' do
        it { should use_before_action(:set_event) }

        pending 'Renders the edit template'
    end

    describe 'PUT #update' do
        pending 'Updates a event with new valid data succesfully'
    end

    describe 'DELETE #destroy' do
        it { should use_before_action(:set_event) }

        pending 'Deletes the event'
    end
end
