#!/usr/bin/env ruby

puts "hello world"

packedItem = Struct.new(:name, :packed)

def newItem(name)
    packedItem.new(name, false)
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
    newItem("towel")
]

breakfast = [
    newItem("cereal"),
    newItem("milk")
]

bring_breakfast = false

puts "How many nights are you there? "
days = gets.chomp
puts "How many pants? "
pants = gets.chomp
puts "How many shorts? "
shorts = gets.chomp 
puts "How many shoes do you need? "
shoes = gets.chomp
puts "How many jackets are you taking? "
jackets = gets.chomp 
puts "How many letters are you taking? "
swimmers = Integer(gets.chomp)

if swimmers > 0
    items << newItem("beach towel")
    items << newItem("sun cream")
end


