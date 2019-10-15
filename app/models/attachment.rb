class Attachment < ApplicationRecord
  mount_uploader :file, AttachmentUploader

  belongs_to :holder, polymorphic: true
end
