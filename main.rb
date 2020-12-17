def get_container(product)
  inventory = {
    'Bread': "bag",
    'Beer': "bottle",
    'Milk': "bottle",
    'Cerials': "box",
    'Eggs': "carton",
    'Candy': "plastic",
  }
  inventory[product.to_sym]
end

p get_container("Bread") == "bag"
p get_container("Beer") == "bottle"
p get_container("Candy") == "plastic"
p get_container("Cheese") == nil