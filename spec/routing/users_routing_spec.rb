require 'rails_helper'

RSpec.describe UsersController, :type => :routing do
  it { should route(:get, '/users/1').to(:action => :show, :id => 1) }

  it 'is expected to route GET /user/1/events' do
    expect(:get => '/users/1/events').to route_to('events#index', :user_id => '1')
  end

  it 'is expected to route GET /user/1/reservations' do
    expect(:get => '/users/1/reservations').to route_to('reservations#index', :user_id => '1')
  end
end
