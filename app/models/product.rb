class Product < ActiveRecord::Base
 def save_image (image)
   name = 'product_' + self.id.to_s + '_' + image.original_filename
   directory = "public/images/upload"
   path = File.join(directory, name)
   File.open(path, "wb") { |f| f.write(image.read) }
   self.image = name
   true
 end
end
