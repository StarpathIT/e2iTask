=begin

Form Creator/Administrator /Dyno Owner = {
    "email" : "kunapuli09@gmail.com",
    "name" : "krishna",
    "phone" : "7202802571",
    "password" : "password",
    "role" : "OWNER",
    "ObjectId" : "51c25b640364a3b7c24240d2"
  }


Field Staff/Executor /Dyno Executor  {
    "email" : "nlkunapuli@gmail.com",
    "name" : "neha",
    "phone" : "7202802753",
    "password" : "password",
    "role" : "EXECUTOR",
    "ObjectId" : "51c25cf50364a3b7c24240d3"
  }

=end
class User
  include Mongoid::Document  
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String
  field :password, type: String
  field :phone, type: String
  field :city, type: String
  field :remember_token, type: String
  field :password_digest, type: String

  #has_many :dynos
  before_save { self.email = email.downcase }

	# callback method that creates a remember_token before creating a new user in DB
	#"Method reference" - rails looks for method called create_remember_token
	before_create :create_remember_token

	validates(:firstName, presence: true, length: { maximum: 50 })
	validates(:lastName, presence: true, length: { maximum: 50 })
	validates(:phone, presence: true, length: { minimum: 10, maximum: 10 })
	validates(:city, presence: true, length: { maximum: 20 })

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	## VALID_EMAIL_REGEX is a constant
	## format validation
	validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX },
		uniqueness: true, uniqueness: { case_sensitive: false })
	## Sometimes when user clicks submit in quick succession, duplication can still occur.
	## to avoid this, create a database index on email column.
  has_secure_password validations: false # gets all current password tests to pass, validations false lets password confirmation error to pass.
	validates :password, presence: true, length: { minimum: 6 }

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
end