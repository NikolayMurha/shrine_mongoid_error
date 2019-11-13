class ImageUploader < Shrine
  plugin :validation_helpers
  plugin :remove_attachment

  Attacher.validate do
    validate_max_size 500 * 1024 * 1024, message: 'is too large (max is 500 MB)'
  end
end
