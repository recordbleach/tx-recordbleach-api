# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def create_user
    user = User.new
    user.email = Faker::Internet.email
    user.password = "12345678"
    user.save!

end

def create_petitions(user)
    t = Petition.new
        t.legal_name = Faker::Name.name
        t.dob = Faker::Date.backward(14)
        t.ssn = Faker::Number.number(9)
        t.dl = Faker::Number.number(8)
        t.address = Faker::Address.street_address
        t.city = Faker::Address.city
        t.state = Faker::Address.state
        t.county = Faker::Address.city
        t.zip = Faker::Address.zip
        t.sex = ["m","f"].sample
        t.race = ["w", "b", "h", "a", "other"].sample
        t.offense_date = Faker::Date.backward(14)
        t.offense_county = Faker::Address.city
        t.arresting_agency = Faker::GameOfThrones.character
        t.arrest_date = Faker::Date.backward(14)
        t.a_address = Faker::Address.street_address
        t.a_city = Faker::Address.city
        t.a_state = Faker::Address.state
        t.a_zip = Faker::Address.zip
        t.a_county = Faker::Address.city
        t.charged = Faker::ChuckNorris.fact
        t.charge_date  = Faker::Date.backward(14)
        t.charged_offenses = Faker::ChuckNorris.fact
        t.charge_cause_number = Faker::Number.number(8)
        t.county_court_at_law = Faker::Address.city
        t.county_court_at_law_number = Faker::Number.number(8)
        t.municipal_court = Faker::Address.city
        t.municipal_court_name = Faker::GameOfThrones.house
        t.district_court = Faker::Address.city
        t.district_court_name = Faker::GameOfThrones.house
        t.acquittal = Faker::Boolean.boolean
        t.dismissal = Faker::Boolean.boolean
        t.dismissal_date  = Faker::Date.backward(14)
        t.convicted = Faker::Boolean.boolean
        t.conviction_date  = Faker::Date.backward(14)
        t.pardon = Faker::Boolean.boolean
        t.overturned = Faker::Boolean.boolean
        t.probation = Faker::Boolean.boolean
        t.deferred_adjudication = Faker::Boolean.boolean
        t.pardon_date  = Faker::Date.backward(14)
        t.overturned_date  = Faker::Date.backward(14)
        t.acquittal_date  = Faker::Date.backward(14)
        t.user_id = user.id
        t.save!
end


30.times do
    create_petitions(User.all.sample)
end
