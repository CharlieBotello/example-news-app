require 'unirest'
    
  while true 
  system "clear"
  print "enter search term: "
  input_search_term = gets.chomp
  response = Unirest.get("http://localhost:3000/articles?search=#{input_search_term}")
  articles = response.body["articles"]
  
  articles.each do |article|
    puts "=" * 50
    puts article["title"]
    puts "_" * 50
    puts article["description"]
    puts 
    puts article["url"]
    puts
    puts
  end 
  puts "press enter to continue or q tp quit"   
  input_choice = gets.chomp
  if input_choice == 'q'
    exit
  end
end 