class Checkpoint < ApplicationRecord
  belongs_to :parent, polymorphic: true
  belongs_to :place, optional: true

  has_many :attachments, :as => :holder
  has_many :checkpoints, :as => :parent
end