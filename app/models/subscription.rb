class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
  belongs_to :group
  belongs_to :user
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  validate :renew_date_is_valid_datetime

  def renew_date_is_valid_datetime
    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips
   validates :renew_date, presence: true
  end
end
