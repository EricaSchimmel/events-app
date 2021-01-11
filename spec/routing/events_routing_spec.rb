require 'rails_helper'

RSpec.describe EventsController, :type => :routing do
  it { should route(:get, '/events').to(:action => :index) }
  it { should route(:get, '/events/1').to(:action => :show, :id => 1) }
  it { should route(:post, '/events').to(:action => :create) }
  it { should route(:put, '/events/1').to(:action => :update, :id => 1) }
  it { should route(:patch, '/events/1').to(:action => :update, :id => 1) }
  it { should route(:delete, '/events/1').to(:action => :destroy, :id => 1) }

  it 'is expected to route GET /events/1/reservations' do
    expect(:get => '/events/1/reservations').to route_to('reservations#index', :event_id => '1')
  end

  it 'is expected to route POST /events/1/reservations' do
    expect(:post => '/events/1/reservations').to route_to('reservations#create', :event_id => '1')
  end
end
