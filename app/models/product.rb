class Product < ActiveRecord::Base
  def image_path
    "public/images" + self.image_name
  end

  def save_image (image)
    name = DateTime.now.to_i.to_s + '_' + image.original_filename
    directory = Rails.root + "app/assets/images"
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(image.read) }
    self.image_name = name
      true
 end
end
