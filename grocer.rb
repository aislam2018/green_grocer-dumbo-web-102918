require 'pry'
def consolidate_cart(cart)
  result = {}
  cart.each do |item_hash|
    item_hash.each do |item, features|
      if result[item]
        features[:count] += 1 
      else
        features[:count] = 1 
        result[item] = features
      end
    end 
  end
    result
end

def apply_coupons(cart, coupons)
coupons.each do |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
