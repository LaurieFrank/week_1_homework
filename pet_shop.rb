def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  found_pets_by_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      found_pets_by_breed.push(pet)
    end
  end
  return found_pets_by_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
  return pet
    end
  end
else
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.shift()
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets].push(new_pet)
  end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  for customer in customers
    customer.push(new_pet)
  end
end

def customer_can_afford_pet(customer, new_pet)
#   # for customer in customers
    if customer[:cash] >= new_pet[:price]
      return true
    end
#   # end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # for pet in pet_shop[:pets]
if pet
  if customer[:cash] >= pet[:price]
     customer[:pets].push(pet)
     pet_shop[:admin][:pets_sold] += 1
     customer[:cash] -= pet[:price]
     pet_shop[:admin][:total_cash] += pet[:price]
   end
  end
end
