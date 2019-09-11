class Donation < ActiveRecord::Base
    belongs_to :donor
    belongs_to :charity
end

def create_donation(amount, donor_id, charity_id)
    


#create_a_donation(should take amount of donation, donor id and charity id as arguments, should save the donation amount to both donor and donation profiles. Asks if donor would like to make another donation, if yes, call #donate helper method, if no, returns the donor to the main page, puts “thank you for your donation!”)

#Helper method #donate(takes amount of donation, donor id and charity id as arguments. Saves the donation amount to both parties profiles).
