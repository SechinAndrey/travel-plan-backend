class TravelPlan < ApplicationRecord
  belongs_to :user

  has_many :checkpoints, :as => :parent
end
