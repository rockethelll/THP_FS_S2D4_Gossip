class Gossipp < ApplicationRecord
  belongs_to :user, optional: true
  has_many :join_table_gossipp_tags
  has_many :tags, through: :join_table_gossipp_tags
end
