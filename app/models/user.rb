class User < ApplicationRecord
  validates :title, presence: true
end
