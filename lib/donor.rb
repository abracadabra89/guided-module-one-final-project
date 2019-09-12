class Donor < ActiveRecord::Base 
    has_many :donations
    has_many :charities, through: :donations


    

    def donate(amount, charity)
        self.donations.create(amount: amount, charity: charity)
    end

    def average_donations
        self.donations.average(:amount).to_f
    end

    def max_donations
        self.donations.maximum(:amount)
    end

    def sum_donations
        self.donations.sum(:amount)
    end
    
  




end



