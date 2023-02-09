class CreateGossipps < ActiveRecord::Migration[7.0]
  def change
    create_table :gossipps do |t|
      t.string :title
      t.string :content
      t.belongs_to :user

      t.timestamps
    end
  end
end
