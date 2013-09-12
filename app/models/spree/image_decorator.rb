Spree::Image.class_eval do
  has_attached_file(
      :attachment,
      :processors => [:thumbnail, :watermark],
      :styles => {
          :mini => '128x128>',

          :small => '133x133>',

          :product => {
              :geometry => '398x398>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_398x398.png",
              :watermark_position => "Center",
              :format => :png,
          },
          :large => {
              :geometry => '600x600>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_600x600.png",
              :watermark_position => "Center",
              :format => :png,
          },
      },
      :default_style => :product,
      :url => "/assets/products/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  )
end