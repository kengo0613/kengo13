class Like < ApplicationRecord
  belongs_to :japan
  belongs_to :user
  validates_uniqueness_of :japan_id, scope: :user_id
end
