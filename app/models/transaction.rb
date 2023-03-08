class Transaction < ApplicationRecord
  belongs_to :user_id
  belongs_to :acompte_id
end
