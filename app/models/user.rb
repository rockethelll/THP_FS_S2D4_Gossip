class User < ApplicationRecord
  belongs_to :city, optional: true
  has_many :gossipps
end
