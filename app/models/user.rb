# class EmailValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#       record.errors[attribute] << (options[:message] || "is not an email")
#     end
#   end
# end

class User < ActiveRecord::Base
  # TODO implement association for User model. See user_spec.rb for specification.
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one  :status, dependent: :destroy

  validates :name, presence: true
  # validates :email, uniqueness: true, email: true
  validates :email, uniqueness: true
  validate :email_format

  # TODO Implement validation for User model. See user_spec.rb for specification.
  def email_format
    unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "Must be a valid email")
    end
  end

  # TODO Implement an after_create callback -- welcome_status
  

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips 
  end
end