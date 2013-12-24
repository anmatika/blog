class Product < ActiveRecord::Base
 def save_image (image)
   name = image.original_filename
   directory = "public/images/upload"
   path = File.join(directory, name)
   File.open(path, "wb") { |f| f.write(image.read) }
   true
 end
end
