class FileManagement < ApplicationRecord
	# belongs_to :user, class_name: "User", foreign_key: "user_id"
	mount_uploader :attachment, FileUploader
	validates :title, presence: true, length: {minimum: 5}
	validates :description, presence: true
	validates :attachment, presence: true, file_size: { less_than: 1.gigabytes }
end
