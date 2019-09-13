class CommandLine

  def header
    puts "                                                                 "
    puts "                                                                 "
    puts "                                                                 "

    gif = <<-SUP
                     ██████╗  ██████╗ ███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗    ███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
                     ██╔══██╗██╔═══██╗████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║    ████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
                     ██║  ██║██║   ██║██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║    ██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
                     ██║  ██║██║   ██║██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║    ██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
                     ██████╔╝╚██████╔╝██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║    ██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
                     ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
    SUP
    puts gif
    puts "                                                                 "

    puts "                                                                 "

    puts "                                                                 "

  end
  
  def greet
    pid = fork{ exec 'afplay', "Donate Song.mp3" }
    puts "Welcome to Donation Nation!".colorize(:green)
    puts "                                             "
    puts "What is your name?".colorize(:green)
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
		name = gets.chomp
    puts "What is your location?".colorize(:green)
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
		user_location = gets.chomp
		new_donor = Donor.create(name: name, location: user_location)
    puts "Hi #{name}. Are you a donor or a charity?".colorize(:magenta)
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
    puts "I am a " 
    type_of_user = gets.chomp
		if type_of_user == "donor"
      puts 'Please choose what would you like to do'.colorize(:magenta)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
      puts "                                                           "
			get_donor_input(new_donor)
		else
      puts "What is the name of your charity?".colorize(:cyan)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			charity_name = gets.chomp
      puts "What is your location?".colorize(:cyan)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			charity_location = gets.chomp
      puts "What is the founding year of your charity?".colorize(:cyan)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			charity_founding_year = gets.chomp
      puts "Please add a description of your charity organization?".colorize(:cyan)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			charity_description = gets.chomp
      charity = Charity.create(name: charity, location: charity_location, founding_year: charity_founding_year)
      puts 
                   "██████╗██╗  ██╗ █████╗ ██████╗ ██╗████████╗██╗   ██╗     ██████╗██████╗ ███████╗ █████╗ ████████╗███████╗██████╗ ██╗
                    ██╔════╝██║  ██║██╔══██╗██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝    ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██║
                    ██║     ███████║███████║██████╔╝██║   ██║    ╚████╔╝     ██║     ██████╔╝█████╗  ███████║   ██║   █████╗  ██║  ██║██║
                    ██║     ██╔══██║██╔══██║██╔══██╗██║   ██║     ╚██╔╝      ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██╔══╝  ██║  ██║╚═╝
                    ╚██████╗██║  ██║██║  ██║██║  ██║██║   ██║      ██║       ╚██████╗██║  ██║███████╗██║  ██║   ██║   ███████╗██████╔╝██╗
                    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝        ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═════╝ ╚═╝"
      pid = fork{ exec 'afplay', "Fire Crackers-SoundBible.com-1716803209.mp3" }
      puts "                                                                          "
      puts "Your charity account has been created!".colorize(:green)
		end
	end

	def get_donor_input(donor)

    puts "1. See a list of charities names.".colorize(:green)
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
    puts "2. Search by category.".colorize(:green)
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
    puts "                                                   "
    print "My choice is "
    pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
    donor_input = gets.chomp
    puts "                                                    "
		case donor_input
		when "1"
			all_charities = Charity.all
			all_charities.each {|char|puts char.name}
      puts "Please enter a charity name to donate:".colorize(:red)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			find_charity_name = gets.chomp
			my_charity = Charity.find_by_name(find_charity_name)

      puts "How much would you like to donate?".colorize(:green)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			donation_amount = gets.chomp
      donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
      #add "thank you" gif"
      puts "Thank you for your donation!".colorize(:cyan)
      puts "████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗███████╗    ███████╗ ██████╗ ██████╗     ██╗   ██╗ ██████╗ ██╗   ██╗██████╗     ██████╗  ██████╗ ███╗   ██╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗██╗
      ╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝██╔════╝    ██╔════╝██╔═══██╗██╔══██╗    ╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗    ██╔══██╗██╔═══██╗████╗  ██║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██║
         ██║   ███████║███████║██╔██╗ ██║█████╔╝ ███████╗    █████╗  ██║   ██║██████╔╝     ╚████╔╝ ██║   ██║██║   ██║██████╔╝    ██║  ██║██║   ██║██╔██╗ ██║███████║   ██║   ██║██║   ██║██╔██╗ ██║██║
         ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗ ╚════██║    ██╔══╝  ██║   ██║██╔══██╗      ╚██╔╝  ██║   ██║██║   ██║██╔══██╗    ██║  ██║██║   ██║██║╚██╗██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚═╝
         ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗███████║    ██║     ╚██████╔╝██║  ██║       ██║   ╚██████╔╝╚██████╔╝██║  ██║    ██████╔╝╚██████╔╝██║ ╚████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║██╗
         ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝    ╚═╝      ╚═════╝ ╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝"
      pid = fork{ exec 'afplay', "Audience Clapping - Sound Effect.mp3" }

			donor_menu(donor)
    when "2"
      puts "What categorie would you like?".colorize(:green)
      puts "                                                  "
						list_categories
      puts "Which category would you like?".colorize(:blue)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			find_by_category = gets.chomp
			my_categories = Charity.find_by_category(find_by_category)

      puts "How much would you like to donate?".colorize(:blue)
      pid = fork{ exec 'afplay', "Pew_Pew-DKnight556-1379997159.mp3" }
			donation_amount = gets.chomp
      donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
      puts "Thank you for your donation!".colorize(:cyan)
      
      puts "                                                                "
      
      puts "                                                                "
      pid = fork{ exec 'afplay', "Audience Clapping - Sound Effect.mp3" }
      puts "Menu"
      puts "                                                                 "
      donor_menu(donor)

		
	end
end

def donor_menu(donor)
		puts "Main Menu. What would you like to see?".colorize(:green)
  puts "                                                          "
  puts "                                                          "
  puts "1.Average amount of my donation".colorize(:cyan)
  puts "                                                          "
	puts "2.Largest donation".colorize(:cyan)
  puts "                                                          "
  puts "3.Total amount of my donations".colorize(:cyan)
  puts "                                                          "
  puts "my choice is "
  menu_options = gets.chomp
  puts "                                                          "
		case menu_options
	when "1" 
		puts donor.average_donations
	when "2"
		puts donor.max_donations
	when "3"
		puts donor.sum_donations
	end
    end

  def new_charity(new_charity)
    new_charity = Charity.create(name: new_charity, location: charity_location, founding_year: charity_founding_year)
    get_charity_input(new_charity)
    puts “Your charity account has been created!”
  end

  def list_categories
    
    puts "Great Causes".colorize(:red)
    puts "                                                       "
    puts "Altruism".colorize(:red)
    puts "                                                       "
    puts "Animals".colorize(:red)
    puts "                                                       "
    puts "Love of Tigers".colorize(:red)
    puts "                                                       "
    puts "Child Well-being".colorize(:red)
    puts "                                                       "
    
  end
end

