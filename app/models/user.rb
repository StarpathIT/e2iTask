class User
  include Mongoid::Document  
  include Mongoid::Timestamps
  field :fname, type: String
  field :lname, type: String
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String
  field :phone, type: String
  field :city, type: String
  field :remember_token, type: String

  before_save { self.email = email.downcase }
	
	# callback method that creates a remember_token before creating a new user in DB
	# "Method reference" - rails looks for method called create_remember_token
	before_create :create_remember_token
	
	validates(:fname, presence: true, length: { maximum: 50 })
	validates(:lname, presence: true, length: { maximum: 50 })
	validates(:phone, presence: true, length: { minimum: 10, maximum: 10 })
	validates(:city, presence: true, length: { maximum: 20 })

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# VALID_EMAIL_REGEX is a constant
	# format validation
	validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
		uniqueness: true, uniqueness: { case_sensitive: false })
	# Sometimes when user clicks submit in quick succession, duplication can still occur.
	# to avoid this, create a database index on email column.
	# has_secure_password # gets all current password tests to pass
	validates :password, length: { minimum: 6 }
	
	def User.new_remember_token
    SecureRandom.urlsafe_base64
  	end

  	def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  	end

  	# self allows creation of non-local variable, written to DB.
  	private
  	
  	def create_remember_token
	self.remember_token = User.encrypt(User.new_remember_token)
	end

	def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end