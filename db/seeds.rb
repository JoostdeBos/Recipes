require 'faker'

200.times do |i|
	User.create!(:name => Faker::Name.name, :provider => 'identity', :uid => i)
end