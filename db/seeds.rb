

Donor.create(name: "James Brown", location:"NYC")
Donor.create(name: "Meghan Harp", location:"Cape Cod")
Donor.create(name: "J Lo", location:"Brooklyn")
Donor.create(name: "Beyonce", location:"Washington")
Donor.create(name: "Jay Z", location:"Boston")
puts "donors created"
Charity.create(name: "Good Cause",location:"Atlanta", founding_year: 2008)
Charity.create(name: "Save the Earth",location:"Florida", founding_year: 1965)
Charity.create(name: "Animal's Rescue",location:"Texas", founding_year: 2019)
Charity.create(name: "Children of Africa",location:"Tanzania", founding_year: 1948)
Charity.create(name: "Save the Tigers",location:"South Africa", founding_year: 1999)
puts "charity created"

Donation.create(charity_id:1, donor_id:1)
Donation.create(charity_id:2, donor_id:2)
Donation.create(charity_id:3, donor_id:3)
Donation.create(charity_id:4, donor_id:4)
Donation.create(charity_id:5, donor_id:5)
puts "donation created"
