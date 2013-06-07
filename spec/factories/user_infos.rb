# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_info do
    user nil
    xing "MyString"
    ming "MyString"
    en_name "MyString"
    nice_name "MyString"
    gender 1
    birth "2013-06-06"
    birth_place "MyString"
    living_place "MyString"
    picture_url "MyString"
    email "MyString"
    qq "MyString"
    phone "MyString"
  end
end
