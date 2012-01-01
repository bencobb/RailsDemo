class CreateAddStatuses < ActiveRecord::Migration
  def change
    create_table :add_statuses do |t|

      t.timestamps
    end
  end
end
