# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
   def default_url
    "image-unknown.jpg"
<<<<<<< HEAD
  end
=======
   end
>>>>>>> 960128c1e616d5fc53d1db8b553017797951ff54

  version :recpic do
    process :resize_to_fit => [200, 200]
  end

  version :thumb do
    process :resize_to_fit => [24, 24]
  end

  version :ava do
    process :resize_to_fit => [200, 200]
  end
end
