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
        get_charity_input
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
         puts "How much would yo like to donate?"
         donation_amount = gets.chomp
         donation = Donation.create(donor: donor, charity: my_charity, amount: donation_amount)
         puts "Thank you for your donation!"
         when "2"
          puts "Please choose a category type:"
          puts ""
          type_of_charity = gets.chomp
          when "3"
          puts "How much would you like to donate?"
          donation_amount = gets.chomp
          #make_a_donation
          when "4"
          puts "Thanks for visiting!"
        else
        greet
        end
      end
    end

    #   def get_charity_input
    #     puts "What is the name of your charity?"
    #     charity_name = gets.chomp
    #     puts "What is the founding year of your organization?"
    #     founding_year = gets.chomp
        
    # end
    
    # end

    



