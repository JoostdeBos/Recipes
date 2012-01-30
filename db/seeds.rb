require 'faker'

10000.times do |i|
	User.create!(:name => Faker::Name.name, :provider => 'identity', :uid => i)
end