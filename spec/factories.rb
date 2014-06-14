FactoryGirl.define do
  factory :user do
     factory :authenticated_user do
       email 'apple@example.com'
       password 'secret'
       password_confirmation 'secret'
     end
   end
end
