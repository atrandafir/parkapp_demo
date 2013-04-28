class User < ActiveRecord::Base
  before_create :encrypt_password
  attr_accessible :username, :salt, :created_at, :email, :password, :updated_at, :password_confirmation
  
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i
				validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
				validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
				validates :password, :presence => true, :confirmation => true #password_confirmation attr
				validates_length_of :password, :in => 6..20, :on => :processregistration
  
        def encrypt_password
		 if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.password= BCrypt::Engine.hash_secret(password, salt)
		end
	end
        
end
