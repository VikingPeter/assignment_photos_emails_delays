class User < ActiveRecord::Base

	has_attached_file :photo

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  attr_accessor :delete_photo

  before_validation { photo.clear if delete_photo == '1' }

end
