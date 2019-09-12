require 'colorize'

class CommandLine
  def greet
      puts "Welcome to Donation Nation!".colorize(:yellow)
      require 'colorize'
      puts "What is your name?".colorize(:magenta)
      name = gets.chomp
      require 'colorize'
      puts "What is your location?".colorize(:cyan)
      user_location = gets.chomp
      new_donor = Donor.create(name: name, location: user_location)
      require 'colorize'
      puts "Hi #{name}. Are you a donor or a charity?".colorize(:cyan)
      type_of_user = gets.chomp
      if type_of_user == "donor"
        require 'colorize'
          puts 'Please choose what would you like to do'.colorize(:bg_magenta)
      get_donor_input(new_donor)
      else
        require 'colorize'
        puts "What is the name of your charity?".colorize(:bg_magenta)
        charity_name = gets.chomp
        require 'colorize'
        puts "What is your location?".colorize(:blue)
        charity_location = gets.chomp
        require 'colorize'
        puts "What is the founding year of your charity?".colorize(:yellow)
        charity_founding_year = gets.chomp
        require 'colorize'
        puts "Please add a description of your charity organization?".colorize(:purple)
        charity_description = gets.chomp
        charity = Charity.create(name: charity, location: charity_location, founding_year: charity_founding_year)
        require 'colorize'
        puts "Your charity account has been created!".colorize(:pink)
      end
    end

      def get_donor_input(donor)
        require 'colorize'
      puts "1. See a list of charities names.".colorize(:green)
      require 'colorize'
      puts "2. Search by category.".colorize(:purple)
      donor_input = gets.chomp
      case donor_input
      when "1"
        all_charities = Charity.all
        all_charities.each {|char|puts char.name}
        require 'colorize'
       puts "Please enter a charity name to donate:".colorize(:purple)
       find_charity_name = gets.chomp
       my_charity = Charity.find_by_name(find_charity_name)
       require 'colorize'
       puts "How much would you like to donate?".colorize(:yellow)
       donation_amount = gets.chomp
       donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
       require 'colorize'
       puts "Thank you for your donation!".colorize(:purple)
       donor_menu(donor)
      when "2"
        list_categories
        require 'colorize'
        puts "Which category would you like?".colorize(:blue)
        find_by_category = gets.chomp
        my_categories = Charity.find_by_category(find_by_category)
        require 'colorize'
        puts "How much would you like to donate?"
        donation_amount = gets.chomp
        donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
        puts "Thank You for your donation!"
        binding.pry
        
        
        
      end
    end
  end

        def donor_menu(donor)
        puts "Main Menu. What would you like to see?"
        puts "***************************************"
        puts "1.Average amount of my donation"
        puts "2.Largest donation"
        puts "3.Total amount of my donations"
        menu_options = gets.chomp
       
        case menu_options
        when "1"
        puts donor.average_donations
        when "2"
        puts donor.max_donations
         when "3"
         puts donor.sum_donations
         end
          
        
end
   
  








