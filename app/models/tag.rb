class Tag < ApplicationRecord
  has_many :join_table_gossipp_tags
  has_many :gossipps, through: :join_table_gossipp_tags
end
