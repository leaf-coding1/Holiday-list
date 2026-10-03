#!/usr/bin/env ruby

puts "hello world"

PackedItem = Struct.new(:name, :packed, :num)

def newItem(name)
    PackedItem.new(name, false, 1)
end

items = [
    newItem("belt"),
    newItem("shampoo"),
    newItem("soap"),
    newItem("lip cream"),
    newItem("tooth brush"),
    newItem("tooth paste"),
    newItem("conditioner"),
    newItem("hair brush"),
    newItem("deodorant"),
    newItem("phone charger"),
    newItem("shaver"),
    newItem("towel"),
    newItem("undie"),
    newItem("sock"),
    newItem("shirt")
]

breakfast = [
    newItem("cereal"),
    newItem("milk")
]

bring_breakfast = false

puts "How many nights are you there? "
days = Integer(gets.chomp)
puts "How many pants? "
pants = Integer(gets.chomp)
puts "How many shorts? "
shorts = Integer(gets.chomp)
puts "How many shoes do you need? "
shoes = Integer(gets.chomp)
puts "How many jackets are you taking? "
jackets = Integer(gets.chomp)
puts "How many swimmers are you taking? "
swimmers = Integer(gets.chomp)

for i in items
    if i.name == "undie" || i.name == "sock" || i.name == "shirt"
        i.num = days
    end
end

if pants > 0
    items << PackedItem.new("pant", false, pants)
end
if shorts > 0
    items << PackedItem.new("short", false, shorts)
end
if shoes > 0
    items << PackedItem.new("shoe", false, shoes)
end
if jackets > 0
    items << PackedItem.new("jacket", false, jackets)
end

if swimmers > 0
    items << newItem("beach towel")
    items << newItem("sun cream")
end



while gets.chomp != "exit"
    for i in items 
        # have one statement for multiples and one for a single item
        if i.packed == false && i.num == 1
            puts "bring #{i.name}"
        elsif i.packed == false
            puts "number of #{i.name}s is #{i.num}"
        end
    end
end

