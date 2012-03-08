class CreateEventCategorizations < ActiveRecord::Migration
  def change
    create_table :refinery_event_categorizations do |t|
      t.integer :event_id
      t.integer :event_category_id

      t.timestamps
    end
  end
end
