FactoryGirl.define do
  factory :user, :class => User do
    email 'jay@gmail.com'
    password "password"
  end

  factory :question do
    sequence(:title) {|n| "Question #{n}"}
    public true
    sequence(:question) {|n| n}
  end
