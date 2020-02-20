class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
