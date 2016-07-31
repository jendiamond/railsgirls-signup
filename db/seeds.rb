#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

os = ["Mac","Linux","Windows","Mac","Linux","Mac","Mac"]
opsys= os.shuffle

boo = [true, false]
bool = boo.shuffle

100.times do
  User.create( first_name: FFaker::Name.first_name,
                last_name: FFaker::Name.last_name,
                email: 'jane@email.com',
                twitter_handle: FFaker::Name.first_name,
                phone: FFaker::PhoneNumber.short_phone_number,
                zipcode: FFaker::AddressUS.zip_code,
                over_21: bool[0],
                operating_system: opsys[0] )
end
