class Photo
  include Mongoid::Document
  include Mongoid::Timestamps
  embedded_in :gallery, polymorphic: true
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute

  field :name, type: String, default: 'Some Name'
  field :image_data, type: String
  validates :name, presence: true
end
