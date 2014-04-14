require 'spec_helper'

FactoryGirl.define do
  factory :user do
    email 'jay@gmail.com'
    password '1'
    password confirmation '1'
  end
end
