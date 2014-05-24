class Pin < ActiveRecord::Base

  has_attached_file :image, :styles => {:medium => "220x500>", :large => "960x640>"}
  belongs_to :user

  validates :description, :presence => true
  validates :user_id, :presence => true
  validates_attachment :image, :presence => true

# Validate content type
  validates_attachment_content_type :image, :content_type => /\Aimage/

end
