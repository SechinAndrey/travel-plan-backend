class Place < ApplicationRecord
  belongs_to :user

  has_many :checkpoints
  has_many :attachments, :as => :holder
end
