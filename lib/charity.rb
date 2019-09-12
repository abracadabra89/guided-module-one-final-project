class Charity < ActiveRecord::Base
    has_many :donations
    has_many :donors, through: :donations
 

    # def create_new_charity_organisation
    #     self.new(name, location, founding_year)
    # end

    
    
    

    
end


#create_new_charity_organisation
#list_charities_categories(create a separate class with the categories and add them to this method)
#donor_count(how many donors donated to this charity)
#find_charity_by_name
#find_the_most_popular_charity
#see_all_donations_to_my_charity
#find_the_average_amount_of_donation
