Company.destroy_all
Dev.destroy_all
Company.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder  = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron =Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazorpop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
f1 = Freebie.create(item_name: "Keychain", value: 2, company_id: google.id, dev_id: rick.id)
f2 =Freebie.create(item_name: "Keychain", value: 2, company_id: facebook.id, dev_id: morty.id)
f3 =Freebie.create(item_name: "Phone Charger", value: 10, company_id: dunder.id, dev_id: morty.id)
f4 =Freebie.create(item_name: "Pencil", value: 1, company_id: facebook.id, dev_id: rick.id)
f5 =Freebie.create(item_name: "Knife", value: 4, company_id: facebook.id, dev_id: meseeks.id)
f6 =Freebie.create(item_name: "Job Offer", value: 60_000, company_id: dunder.id, dev_id: gazorpop.id)
f7 =Freebie.create(item_name: "Job Offer", value: 200_000, company_id: enron.id, dev_id: gazorpop.id)
puts "Seeding done!"
