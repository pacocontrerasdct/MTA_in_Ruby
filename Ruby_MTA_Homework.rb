MTA = {
  :lineN => ['Time Square','34th','28thN','23rdN','Union Square','8thN'],
  :lineL => ['8thL','6th','Union Square','3rd','1st'],
  :line6 => ['Grand Central','33rd','28thVI','23rdVI','Union Square','Astor Place']
}

puts 'Line N has this stops:'
lineN_stops =  MTA[:lineN]
lineN_stops_downcase =  lineN_stops.join(',').downcase
lineN_stops_downcase_array =  lineN_stops_downcase.split(',')

puts lineN_stops.join(', ')
  
puts 'Where are you?'
start_Stop = gets.chomp.downcase

if lineN_stops_downcase.include?(start_Stop) == true
  puts 'Start is in line N'
  lineN_stops.each { |stop| if stop == start_Stop
   index_Start = lineN_stops.index(stop)
   puts 'index start stop is: ' , index_Start
    end
  }
else
  puts 'start not in line'
end

puts 'Where do you want to go?'
end_Stop = gets.chomp.downcase

if lineN_stops_downcase.include?(end_Stop) == true
  puts 'end is in line N'
  lineN_stops.each { |stop| if stop == end_Stop
   index_end = lineN_stops.index(stop)
   puts 'index last stop is: ' , index_end
    end
  }
else
  puts 'End not in line N'
end

number_stops = (index_end - index_Start).to_i
puts 'Number of stops to destination: ', number_stops