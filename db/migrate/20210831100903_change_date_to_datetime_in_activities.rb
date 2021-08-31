class ChangeDateToDatetimeInActivities < ActiveRecord::Migration[6.0]
  def change
    change_column :activities, :date_from, :datetime, limit: 5
    change_column :activities, :date_to, :datetime, limit: 5
  end
end
