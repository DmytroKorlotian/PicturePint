class Pint < ApplicationRecord
	belongs_to :user
	has_attached_file :image, 
		styles: { medium: "300x300>", thumb: "100x100>" }.merge(Paperclip::Attachment.default_options)
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
