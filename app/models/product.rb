class Product < ActiveRecord::Base
  require 'RMagick'
  def save_image (image)
    return if image.nil?

    # write image
    name = DateTime.now.to_i.to_s + '_' + image.original_filename
    directory = Rails.root + "app/assets/images"
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(image.read) }

    # write image's thumbnail
    thumb = Magick::Image.read(directory + name).first
    thumb.crop_resized!(75, 75, Magick::NorthGravity)
    thumb.write (directory.to_s + '/thumb_' + name.to_s)

    # update names to model
    self.image_name = name
    self.image_name_thumb = 'thumb_' + name.to_s
    true
 end
end
