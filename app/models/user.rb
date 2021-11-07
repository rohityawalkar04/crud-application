class User < ApplicationRecord
  # bundle exec rails g model user name:string email:string password:digest
  # using above command has_secure_command is already there, it can be used to decrypt the password and validate the user
  # u = User.new
  # u.name="Rohit" u.email="test@example.com" u.password="12345" u.password_confirmation="12345" u.save password_digest will be crypted one
  # throws error if pass and pass_confirm doesn't matches
  # u.authenticate("any_password") -> false i wrong, object if right password
  has_secure_password
  EMAIL_VALIDATOR_REGEX = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
  validates :name, :email, presence: true
  validates :email, format: { with: EMAIL_VALIDATOR_REGEX, :multiline => true }, uniqueness: { :case_sensitive => false }
end
