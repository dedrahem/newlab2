# reads from the template file

require "csv"
require "erb"
require 'pp'

html = File.read("report.erb")
#  REPLACES INFO WITH THE INTENDED INFO VALUES

page_title = "Weekly Revenue - Planet Express"

responses = []
table1 = []
table3 = []
table4 = []
table5 = []
CSV.foreach("planet_express_logs.csv", headers: true) do |row|
  responses << row.to_hash
end
puts
puts
puts "                                              Program Start"
# puts responses.inspect

#     end
# puts "hey this is newtab 1"
# puts newtab1.inspect
# puts " the length of newtab1 is #{newtab1.length}"
# puts
# puts



destination = responses.map do |response|
  response["Destination"]
end
table1 << destination
puts destination[0]
puts destination[1]
puts destination[2]
puts destination[9]
puts "responses at line 38 inspect returns ......."
# puts destination.inspect
puts responses.inspect
puts
shipment = responses.map do |response|
  response["Shipment"]
end

puts shipment[0]
puts shipment[1]

table3 << shipment
puts "   shipment inspect returns ........."
puts shipment.inspect

containers = responses.map do |response|
  response["Crates"].to_i
end

containers = responses.map do |response|
  response["Crates"].to_s
end

table4 << containers

puts " containers inspect returns ........."
puts containers.inspect

money = responses.map do |response|
  response["Money"].to_i
end

newmoney = responses.map do |response|
  response["Money"].to_s
end

table5 << newmoney
puts newmoney[0]
puts newmoney[1]
puts newmoney[2]
puts newmoney[9]
puts "  newmoney inspect "
puts newmoney.inspect

revenue = 0
money.each do |value|
  temp = value + revenue
  revenue = temp
end

# puts destination.inspect
# puts shipment.inspect
# puts " Total Revenue for Week - $#{revenue}"
puts ""
# puts "Weekly Shipment Record #{responses}"

fry = []
amy = []
bender = []
leela = []
table2 = []
m = []
p = []


pilot_destination = responses.map do |parsehash|
  if parsehash["Destination"] == "Earth"
    fry << parsehash
  elsif parsehash["Destination"] == "Mars"
    amy << parsehash
  elsif parsehash["Destination"] == "Uranus"
    bender << parsehash
  else
    leela << parsehash
  end
end

puts ""
# puts "the number of trips for fry is #{fry.length}"
fl = fry.length
al = amy.length
bl = bender.length
ll = leela.length


# puts "the number of trips for amy is #{amy.length}"
# table2[:Pilot] = "Amy"
# table2[:Trips] = amy.length
# puts "the number of trips for bender is #{bender.length}"
# table2[:Pilot] = "Bender"
# table2[:Trips] = bender.length
# puts "the number of trips for leela is #{leela.length}"
# table2 << [Pilot: "Leela"]
# table2[:Trips] = leela.length
# puts table2.inspect
# puts " fry inspect"
# puts fry.inspect
# puts " amy  inspect"
# puts amy.inspect
# puts " bender inspect"
# puts bender.inspect
# puts " leela inspect"
# puts leela.inspect
# puts " ******************************  "
#  " pilot_go_to  using   pilot_go_to and inspect "
# puts " the length of pilot_go_to is #{pilot_go_to.length}"
# puts " pilot_destination using inspect is  .."
# puts pilot_destination.inspect
# puts " ******************************  "
# rabbit = pilot_destination.uniq  this actually worked


puts ""

  fry_earnings = fry.map do |parse_it|
  parse_it["Money"].to_i
  end
revenue = 0.0
fry_earnings.each do |value|
  temp = value + revenue
  revenue = temp
end
fry_revenue = revenue
fry_bonus = revenue * 0.01
fbonus = fry_bonus
p[0] = "Fry"
m[0] = fry_revenue.to_s

amy_earnings = amy.map do |parse_it|
  parse_it["Money"].to_i
end
revenue = 0.0
amy_earnings.each do |value|
  temp = value + revenue
  revenue = temp
end
amy_revenue = revenue
p[1] = "Amy"
m[1] = amy_revenue.to_s
# puts "money delivered by Amy  $#{amy_revenue}"
amy_bonus = revenue * 0.01
abonus = amy_bonus
bender_earnings = bender.map do |parse_it|
  parse_it["Money"].to_i
end
revenue = 0.0
bender_earnings.each do |value|
  temp = value + revenue
  revenue = temp
end
bender_bonus = revenue * 0.01
bender_revenue = revenue
p[2] = "Bender"
m[2] = bender_revenue.to_s
# puts " money delivered by Bender is  $#{bender_revenue}"
bbonus = bender_bonus
leela_earnings = leela.map do |parse_it|
  parse_it["Money"].to_i
end
revenue = 0.0
leela_earnings.each do |value|
  temp = value + revenue
  revenue = temp
end
leela_bonus = revenue * 0.01
lbonus = leela_bonus
leela_revenue = revenue
p[3] = "Leela"
m[3] = leela_revenue.to_s
# puts " money delivered by Leela  $#{leela_revenue}"

table2[0] = {Pilot: "Fry", Trips: fl, Bonus: fbonus}
table2[1] = {Pilot: "Amy", Trips: al, Bonus: abonus}
table2[2] = {Pilot: "Bender", Trips: bl, Bonus: bbonus}
table2[3] = {Pilot: "Leela", Trips: ll, Bonus: lbonus}








# table2 << {Pilot: "Fry", Trips: fl, Bonus: fbonus}
# table2 << {Pilot: "Amy", Trips: al, Bonus: abonus}
# table2 << {Pilot: "Bender", Trips: bl, Bonus: bbonus}
# table2 << {Pilot: "Leela", Trips: ll, Bonus: lbonus}
# table1.each do |bigsky|
# puts "#{bigsky}"
# end

# puts
# puts " DOES THIS WORK at CSV datadump.  Table1 is a length of #{table1.length}"
# puts
# [table1].each do |bigsky|
#   [table3].each do |bluesky|
#     [table4].each do |carrot|
#     [table5].each do |pickle|
#   puts "#{bigsky}"
#   puts "#{bluesky}"
#   puts "#{carrot}"
#   puts "#{pickle}"
#   end
#   end
#   end
#   end

  puts
  puts

  #  newtab1 = table1.map do |frydaddy|
  #  frydaddy[0]   what if you made a 0 to 9 counter and placed them in like eggs
  #  end
  # puts "hey this is new table 1"
  # puts newtab1.inspect
  # puts " the length of newtab1 is #{newtab1.length}"
  # puts
  # puts


puts "bvbvbvbvbvbvbvbvbvbvbvbvbvbv"
# puts table1.inspect

# puts
# puts " DOES THIS EVEN WORK at bigsky"
# puts
# table1.each do |a, b, c, d|
# puts "#{a}  #{b}   #{c}   #{d} "
# end

puts
table2.each do |pilot_data|
  puts "#{pilot_data[:Pilot]} had #{pilot_data[:Trips]} trips and made #{pilot_data[:Bonus]}"
end

puts
puts
puts

# puts table2.inspect
new_html = ERB.new(html).result(binding)
# writing to the HTML file .....
File.open("report.html","wb") do |file|
  file.write(new_html)
  file.close
end
puts "           finished  -  program's last line"
