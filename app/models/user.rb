class User < ApplicationRecord  
	has_many :orders
	before_save {self.email = email.downcase}

	has_secure_password
end