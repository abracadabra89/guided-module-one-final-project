class Donor < ActiveRecord::Base 
    has_many :donations
    has_many :charities, through: :donations


    

    def donate(amount, charity)
        self.donations.create(amount: amount, charity: charity)
    end

    
    #Helper method #donate(takes amount of donation, donor id and charity id as arguments. Saves the donation amount to both parties profiles).
    #def donate(amount, donor_id, charity_id)




end


#create_account(name, location)
#find_donation_by_charity_name
#my_donations(see all donations)
#latest_donation
#largest_donation
