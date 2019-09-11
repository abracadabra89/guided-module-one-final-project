class Donor < ActiveRecord::Base 
    has_many :donations
    has_many :charities, through: :donations


    def create_donor_account(name, location)
        self.new(self, name, location)
    end




end


#create_account(name, location)
#find_donation_by_charity_name
#my_donations(see all donations)
#latest_donation
#largest_donation
