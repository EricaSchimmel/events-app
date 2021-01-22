class ChangeDefaultValueForGuestLimitFromNilTo0InEvents < ActiveRecord::Migration[6.0]
  def change
    change_column_default :events, :guest_limit, from: nil, to: 0
  end
end
