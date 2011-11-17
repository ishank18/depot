class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
	belongs_to :cart
	
	def total_price
		product.price * quantity
	end

	def total_items
		line_items.sum(:quantity)
	end

end
