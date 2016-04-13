#************Bonus Question Answers by Christina Nguyen**********************************


#***************The Pyramids Problems*************************************************
#user should run this file in terminal with a number after the file name
puts "Build a pyramid with the height that a user passes in the terminal line to run the program"

height = ARGV[0]  #ARGV is an array of the arguments passed through command line
output = ""
height.to_i.times do |i|
    i = i + 1
  output << "*" * i
  output << "\n"
end
puts output

puts "Now make it a double-sided pyramid!"

height = ARGV[0]  #ARGV is an array of the arguments passed through command line
output = ""
height.to_i.times do |i|
    i = i + 1
  output << " " * (height.to_i - i)
  output << "*" * (i*2)
  output << "\n"
end
puts output
#***The Cats in the Hats Problem*************************
puts "'The Cats in the Hats' problem:"
puts "
You have 100 cats in a row that are all wearing hats.
You make 100 passes by the cats. The first time through, 
you visit every cat and remove its hat if it’s on, and put it on if it’s off. 
The second time you only visit every 2nd cat (cat #2, #4, #6, …). 
The third time, every 3rd cat (cat #3, #6, #9, …), etc, until you only visit the 100th cat.

Write code that displays which cats have hats and which cats do not at the end of the 100th iteration.
"

#let cats with hats on = true
#let cats without hats = false

cats = []
100.times do 
    cats << true 
end

100.times do |x|
    x+= 1 # x = x + 1
    cats.each_with_index do |cat, index|
        if (index + 1) % x == 0
            cats[index] = !cat
        end
    end
end

#if you want to see exactly at which number cat has a hat or not for a user: below
cats.each_with_index do |x, index|
	index += 1
	if x == true
	p "#{index}, Hat"
	elsif x == false
	p "#{index}, No Hat"
	end
end




		