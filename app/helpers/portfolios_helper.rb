module PortfoliosHelper
  def image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_image.to_s? || img.model.thumb_image.to_s?
      img.to_s
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end
