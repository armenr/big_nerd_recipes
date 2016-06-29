class Recipe < ActiveRecord::Base
  has_many :ingredients

  before_create :ensure_shortcode_present

  def ensure_shortcode_present
  	self.shortcode = SeucreRandom.hex(3) unless shortcode.present?
  end
end
