class Post < ApplicationRecord

  has_many_attached :images

    # 写真を表示させるためのメソッドを定義する
  # def get_images
  #   if images.attached?
  #     images
  #   else
  #     'nature-1.jpg'
  #   end
  # end

end
