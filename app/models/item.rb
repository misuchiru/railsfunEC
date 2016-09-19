class Item < ActiveRecord::Base
  belongs_to :cate

  has_attached_file :cover,
                    styles: {
                        original: "1024x1024>",
                        medium: "300x300>",
                        thumb: "100x100"
                    },
                    default_url: "/images/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end