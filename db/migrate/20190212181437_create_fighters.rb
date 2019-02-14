class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :nickname
      t.string :weight_class
      t.string :country
      t.string :home

      t.timestamps
    end
  end
end
