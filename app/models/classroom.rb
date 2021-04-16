class Classroom < ApplicationRecord
  has_many :user, dependent: :destroy
end
