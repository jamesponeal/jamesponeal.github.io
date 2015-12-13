

hash1 = (1..6).group_by { |i| i%3 }
puts hash1


test_array = [1,2,3,4,5,6]
hash2 = test_array.group_by{|x| x > 3}
puts hash2

name_array = ["Jim", "Bob", "Kate", "Dave", "James", "Thomas", "Carrie", "Rumpelstiltskin"]
hash3 = name_array.group_by{|x| x.length}
puts hash3

food_array = ["Carrot Cake", "Steak", "Pumpkin Pie", "Blueberry Pie", "Hamburger", "Pizza", "Chocolate Cake", "Salad"]
hash4 = food_array.group_by do |x|
  if x.include?("Cake") || x.include?("Pie")
    "Dessert"
  else
    "Dinner"
  end
end
puts hash4

