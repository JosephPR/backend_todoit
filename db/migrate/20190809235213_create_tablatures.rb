class CreateTablatures < ActiveRecord::Migration[5.2]
  def change
    create_table :tablatures do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :composer
      t.string :skill

      t.timestamps
    end
  end
end
