class CreateUsers < ActiveRecord::Migration[7.1] #this file creates a model into my database, and creates some params to my model
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
