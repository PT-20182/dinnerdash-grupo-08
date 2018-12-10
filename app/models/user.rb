class User < ApplicationRecord

  has_many :orders, inverse_of: :user    
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validates presence and uniqueness of full name and username
  validates :full_name, presence: :true, uniqueness: { case_sensitive: false }
  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  # Only allow letter, number, underscore and punctuation for the username,
  # so it can't look like another user's email
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  # Virtual attribute for login so it can log using either it's email or it's username
  attr_writer :login

  def login
    @login || self.username || self.email
  end

  # Authentication method using the login attribute.
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end
