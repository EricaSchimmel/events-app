require 'rails_helper'

RSpec.describe ReservationsController, :type => :routing do
  it { should route(:delete, '/reservations/1').to(:action => :destroy, :id => 1) }
end
