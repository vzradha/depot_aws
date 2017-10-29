class Product < ActiveRecord::Base
	default_scope { order(:title) } 

	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
	#validates :image_url, presence: true, format: { with: %r{\.(gif|png|jpg)\A}i, message: "Invalid format" }
	validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01  }

end
