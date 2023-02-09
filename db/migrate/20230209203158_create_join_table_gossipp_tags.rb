class CreateJoinTableGossippTags < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_gossipp_tags do |t|
      t.belongs_to :tag
      t.belongs_to :gossipp

      t.timestamps
    end
  end
end
