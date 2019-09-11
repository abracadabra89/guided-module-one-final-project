class CommandLine

    def greet
        puts "Welcome to Donation Nation!"
        puts "What is your name?"
        name = gets.chomp
        puts "What is your location?"
        user_location = gets.chomp
        puts "Hi #{name}. Are you a donor or a charity?" 
        type_of_user = gets.chomp
        if type_of_user == "donor"
            puts 'Please choose what would you like to do'
        get_donor_input 
        else
        get_charity_input
        end

      end  

        def get_donor_input
        puts "1. See a list of charities names."
        puts "2. Search by category."
        puts "3. Make a donation."
        puts "4. Type 'quit' to exit."
        donor_input = gets.chomp
        case donor_input
        when "1"
         puts "Please enter a charity name to donate: "
         find_charity_name = gets.chomp
         #create_donation method
          when "2"
          puts "Please enter category type for list of choices: "
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

      def get_charity_input
        puts "What is the name of your charity?"
        charity_name = gets.chomp
        puts "What is the founding year of your organization?"
        founding_year = gets.chomp
        
    end
    
    end

    



