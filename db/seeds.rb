

Donor.create(name: "James Brown", location:"NYC")
Donor.create(name: "Meghan Harp", location:"Cape Cod")
Donor.create(name: "J Lo", location:"Brooklyn")
Donor.create(name: "Beyonce", location:"Washington")
Donor.create(name: "Jay Z", location:"Boston")
puts "donors created"

char1 = Charity.create(name: "Good Cause",location:"Atlanta", founding_year: 2008, category: "Great Causes")
char2 = Charity.create(name: "Save the Earth",location:"Florida", founding_year: 1965, category:"Altruism")
char3 = Charity.create(name: "Animal's Rescue",location:"Texas", founding_year: 2019, category: "Animals")
char4 = Charity.create(name: "Children of Africa",location:"Tanzania", founding_year: 1948, category: "Child Well-being")
char5 = Charity.create(name: "Save the Tigers",location:"South Africa", founding_year: 1999, category: "Love of Tigers")
puts "charity created"

Donation.create(charity_id:char1.id, donor_id:1)
Donation.create(charity_id:char2.id, donor_id:2)
Donation.create(charity_id:char3.id, donor_id:3)
Donation.create(charity_id:char4.id, donor_id:4)
Donation.create(charity_id:char5.id, donor_id:5)
puts "donation created"
