class User < ActiveRecord::Base

	validates :email , presence: true, uniqueness: true
	validates :username, presence: true

	def password
		@password || BCrypt::Password.new(hashed_password)
	end

	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.hashed_password = @password
	end

	def self.authenticate(entrered_email,input_password)
		@user = User.find_by(email: entrered_email)
		if @user && @user.password == input_password
			return @user
		else
			return nil
		end
	end
end
