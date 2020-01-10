require 'pp'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
#

find_name = collection.find {|x| x[:item] == name}
if collection.length == 0 || find_name == nil
  return  nil
else
  return find_name
end
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
z = 0
new_array = []

  while z < cart.length do
    find_by_item = find_item_by_name_in_collection(cart[z][:item], new_array)
    if new_array.length == 0 || find_by_item == nil
      new_array << cart[z]

      add_count = new_array.find{|x| x[:item] == cart[z][:item]}
      add_count[:count] = 1
  else
      add_count[:count] += 1
    end
    z += 1
  end
   new_array
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  # copy_cart = []
  #
  #   i = 0
  # while i < coupons.length do
  #    select_item = find_item_by_name_in_collection(coupons[i][:item], copy_cart)
  #
  #    hash_with_coupon[:item] = "#{coupons[i][:item]} W/COUPON"
  #    hash_with_coupon[:price] = coupons[i][:num] / select_item[:count]
  #    hash_with_coupon[:clearance] = select_item[:clearance]
  #    hash_with_coupon[:count] = coupons[i][:num] > select_item[:count] ? coupons[i][:num] - select_item[:count]: coupons[i][:num]
  #
  # end
  pp cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
