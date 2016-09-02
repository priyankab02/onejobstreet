class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauth_providers => [:facebook, :google_oauth2, :linkedin]

   

	def self.from_omniauth(auth)
		email = auth.info.email.present? ? auth.info.email : "#{auth.uid}@gmail.com"
		user_exist = User.find_by_email(email)
		if user_exist.nil?
			where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
				user.provider = auth.provider
				user.uid = auth.uid
				# user.access_token = auth.credentials.token
				user.email = email
				user.password = Devise.friendly_token[0,20]
				user.save
			end
		else
			user_exist.update( provider: auth.provider, uid: auth.uid )
		end
		return user_exist
	end

end
