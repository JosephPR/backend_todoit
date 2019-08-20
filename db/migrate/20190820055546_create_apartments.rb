class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :neighborhood
      t.string :price
      t.string :amenities
      t.string :number



      t.timestamps
    end
  end
end
