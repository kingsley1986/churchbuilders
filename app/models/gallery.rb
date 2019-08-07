class Gallery < ApplicationRecord
   mount_uploader :image, PictureUploader

end
