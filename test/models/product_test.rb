require 'test_helper'

class ProductTest < ActiveSupport::TestCase


	test "product attributes are not empty" do
		product = Product.new
		assert product.invalid?
		assert product.errors[:title].any?
		assert product.errors[:description].any?
		assert product.errors[:image_url].any?
		assert product.errors[:price].any?
	end
	
	test "price is positive" do
		p = Product.new(title: "test book", description: "great book", image_url:"test.jpg")
		p.price = -1
		assert p.invalid?
		assert_equal "must be greater than or equal to 0.01", p.errors[:price].join('; ')

		p.price = 0
		assert p.invalid?
		assert_equal "must be greater than or equal to 0.01", p.errors[:price].join('; ')

		p.price = 1
		assert p.valid?
	end

end




