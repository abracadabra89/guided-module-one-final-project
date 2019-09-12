class CommandLine

    def greet
        puts "Welcome to Donation Nation!"
        puts "What is your name?"
        name = gets.chomp
        puts "What is your location?"
        user_location = gets.chomp
        new_donor = Donor.create(name: name, location: user_location)
        puts "Hi #{name}. Are you a donor or a charity?" 
        type_of_user = gets.chomp
        if type_of_user == "donor"
            puts 'Please choose what would you like to do'
        get_donor_input(new_donor) 
        else
          puts "What charity would you like to choose?"
          charity = gets.chomp
          get_charity_input(new_charity)
          new_charity
        end

      end  

        def get_donor_input(donor)
        puts "1. See a list of charities names."
        puts "2. Search by category."
        puts "3. Make a donation."
        puts "4. Type 'quit' to exit."
        donor_input = gets.chomp
        case donor_input
        when "1"
          #list charities
          all_charities = Charity.all
          all_charities.each {|char|puts char.name}
         puts "Please enter a charity name to donate: "
         find_charity_name = gets.chomp
         my_charity =Charity.find_by_name(find_charity_name)
         puts "How much would you like to donate?"
         donation_amount = gets.chomp
         donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
        when "2"
          list_categories
          puts "How much would you like to donate?"
          donation_amount = gets.chomp
          donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
          puts "Thank You for your donation!"
        end
      end
    end

      def get_charity_input(char)
        puts "Good Cause"
        puts "Save The Earth"
        puts "Animal's Rescue"
        puts "Children of Africa"
        puts "Save the Tigers"
        charity = gets.chomp

 
        # puts “What is the name of your charity?”
        # charity_name = gets.chomp
        # puts “waht is your location?”
        # charity_location = gets.chomp
        # puts “What is the founding year of your organization?”
        # charity_founding_year = gets.chomp
        # puts “Please add a description of your charity organization?”
        # charity_description = gets.chomp
      end

      def new_charity(new_charity)
        new_charity = Charity.create(name: new_charity, location: charity_location, founding_year: charity_founding_year)
        get_charity_input(new_charity)
       puts “Your charity account has been created!”
      end

   
  
        
  
    
    # end

    def list_categories
      puts "1. Great Causes"
      puts "2. Altruism"
      puts "3. Animals"
      puts "4. Love of Tigers"
      puts "5. Child Well-being"
      find_by_category = gets.chomp
      my_categories = Charity.find_by_category(find_by_category)
    
  end
# binding.pry
