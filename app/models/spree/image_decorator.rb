Spree::Image.class_eval do
  has_attached_file(
      :attachment,
      :processors => [:thumbnail, :watermark],
      :styles => {
          :mini => {
              :geometry => '48x48>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_48x48.png",
              :watermark_position => "Southwest",
              :format => :png,
          },  
          :small => {
              :geometry => '100x100>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_100x100.png",
              :watermark_position => "Southwest",
              :format => :png,
          },
          :original => {
              :geometry => '600x600>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_600x600.png",
              :watermark_position => "Southwest",
              :format => :png,
          },
          :product => {
              :geometry => '398x398>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_398x398.png",
              :watermark_position => "Southwest",
              :format => :png,
          },
          :large => {
              :geometry => '600x600>',
              :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/watermark_600x600.png",
              :watermark_position => "Southwest",
              :format => :png,
          },
      },
      :default_style => :product,
      :url => "/assets/products/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  )
end
