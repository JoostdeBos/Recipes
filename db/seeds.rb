require 'faker'

100.times do |i|
	User.create!(:name => Faker::Name.name, :provider => 'identity', :uid => i)
end