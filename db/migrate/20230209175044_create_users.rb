class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :email
      t.integer :age
      t.belongs_to :city

      t.timestamps
    end
  end
end
