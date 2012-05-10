class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.integer :minapp
      t.string :category
      t.text :trackrecord

      t.timestamps
    end
  end
end
