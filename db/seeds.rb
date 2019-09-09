#create only for donor and charity

Donor.create(name: "Adam Brown", location:"NYC")
Charity.create(name: "Red cross",location:"NYC", founding_year: 1989)
Donation.create(charity_id:1, donor_id:1)