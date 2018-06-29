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

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets_with_breed = []
  for each_pet in pet_shop[:pets]
    pets_with_breed << each_pet if each_pet[:breed] == breed
  end
  return pets_with_breed
end

def find_pet_by_name(pet_shop, name)
  for each_pet in pet_shop[:pets]
    return each_pet if each_pet[:name] == name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for each_pet in pet_shop[:pets]
    pet_shop[:pets].delete(each_pet) if each_pet[:name] == name
  end
end
