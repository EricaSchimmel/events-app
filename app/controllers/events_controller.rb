class EventsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :find_event, only: [:show, :edit, :update, :destroy]

    def new
    end 
    
    def create
    end 

    def edit
    end 

    def update
    end 

    def destroy
    end 

    private 

    def event_params
        params.require(:event).permit(:title, :date, :description, :online, :online_link, :attendee_limit, :start_time, :end_time)
    end 

    def find_event
        @event = Event.find(params[:id])
    end 
end
