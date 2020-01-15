require 'pry'

# user passes an argument of item to see if the cart includes a specific item
# loop through the cart in order to identify if the cart has said item
# write a condition noting that the item is there or not
def find_item_by_name_in_collection(product, cart)
  saught_product = " "
  cart.find do |items|
    if items[:item] == product
      saught_product = items
    elsif !items[:item] == product
      items[:item] = product
    end
  end
end

# create a new array cart in order to pass products in
# view data structer and identify if there is a key:value (count and integer)
# set a count of 1 to products
# if there are multiple products add a count of 1
def consolidate_cart(cart)
  result = [ ]
  cart.each do |product|
    item = find_item_by_name_in_collection(product[:item], result)
    if !item
      result << product
      product[:count] = 1
    elsif
      item[:count] += 1
      # binding.pry
    end
  end
  result
end

# compair both the cart and the cupons by item name
# apply couplon arithmatic to cart item as well as
# add new item with coupon string
def apply_coupons(cart, coupons)
  binding.pry
  #   cart.each do |product|
  #   coupons.each do |discount|
  #     if product[:item] == discount[:item]
  #       result << product[:item] = "#{product[:item]} W/COUNPON"; product[:price] = product[]
  #     end
  #   end
  # end
end

# def apply_coupons(cart, coupons)
#   i = 0
#   while i < coupons.count do
#     coupon = coupons[i]
#     item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
#     item_is_in_basket = !!item_with_coupon
#     count_is_big_enough_to_apply = item_is_in_basket && item_with_coupon[:count] >= coupon[:num]

#     if item_is_in_basket and count_is_big_enough_to_apply
#       apply_coupon_to_cart(item_with_coupon, coupon, cart)
#     end
#     i += 1
#   end

#   cart
# end

# def apply_clearance(cart)
#   i = 0
#   while i < cart.length do
#     item = cart[i]
#     if item[:clearance]
#       discounted_price = ((1 - CLEARANCE_ITEM_DISCOUNT_RATE) * item[:price]).round(2)
#         item[:price] = discounted_price
#     end
#     i += 1
#   end

#   cart
# end

# def checkout(cart, coupons)
#   total = 0
#   i = 0

#   ccart = consolidate_cart(cart)
#   apply_coupons(ccart, coupons)
#   apply_clearance(ccart)

#   while i < ccart.length do
#     total += items_total_cost(ccart[i])
#     i += 1
#   end

#   total >= 100 ? total * (1.0 - BIG_PURCHASE_DISCOUNT_RATE) : total
# end

# # Don't forget, you can make methods to make your life easy!

# def items_total_cost(i)
#   i[:count] * i[:price]
# end