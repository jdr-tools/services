FactoryGirl.define do
  factory :empty_account, class: Arkaan::Account do
    factory :account do
      username 'Autre compte'
      password 'password'
      password_confirmation 'password'
      email 'machin@test.com'
      lastname 'Courtois'
      firstname 'Vincent'
    end
  end
end