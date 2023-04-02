class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.string :name
      t.string :location
      t.integer :salary

      t.timestamps
    end
  end
end
