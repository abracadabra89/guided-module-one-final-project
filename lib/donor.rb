class Donor < ActiveRecord::Base 
    has_many :donations
    has_many :charities, through: :donations
end
