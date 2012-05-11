class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name, null: false
      t.integer :min_application, null: false  
      t.string :category, null: false

      t.timestamps
    end
  end
end
