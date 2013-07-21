class Post < ActiveRecord::Base
  attr_accessible :content, :title
  # TODO Implement Post associations. See post_spec.rb for specification.
  has_many :comments, dependent: :destroy
  belongs_to :user

  # TODO Implement Post validations. See post_spec.rb for specification.
  validates :title, presence: true
  validates :content, presence: true
end
