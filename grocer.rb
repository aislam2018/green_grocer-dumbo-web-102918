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

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
