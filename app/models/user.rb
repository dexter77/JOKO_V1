class User < ApplicationRecord
  has_many :acomptes
  has_many :transactions, through: :acomptes
end
