class Checkpoint < ApplicationRecord
  has_many :checkpoints, :as => :parent
  belongs_to :parent, polymorphic: true
  belongs_to :place, optional: true
end