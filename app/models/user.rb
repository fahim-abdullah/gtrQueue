class User < ApplicationRecord  
	has_many :orders
	before_save {self.email = email.downcase}
	
end