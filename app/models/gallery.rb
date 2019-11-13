class Gallery
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  # Embeds one example
  embeds_one :photo, class_name: Photo.to_s, autobuild: true, cascade_callbacks: true
  accepts_nested_attributes_for :photo, allow_destroy: true

  validates :name, presence: true
  validates :photo, presence: true
  validates_associated :photo
end
