class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :comments
  has_and_belongs_to_many :users
end
