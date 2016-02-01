
user = User.create( :email => "admin@example.com", :password => "helloworld", :password_confirmation => "helloworld", :confirmed_at => Time.now )
7.times {
  user.items.create( :name => Faker::Hacker.say_something_smart )
}

p "admin@example.com user created!"
p user.items.count.to_s + " to do items created for admin"