
User.create( :email => "admin@bloccitoff.com", :password => "helloworld", :password_confirmation => "helloworld", :confirmed_at => Time.now )

p "admin@bloccitoff.com user created!"