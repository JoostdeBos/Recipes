require 'faker'

<<<<<<< HEAD
100.times do |i|
=======
10000.times do |i|
>>>>>>> 960128c1e616d5fc53d1db8b553017797951ff54
	User.create!(:name => Faker::Name.name, :provider => 'identity', :uid => i)
end