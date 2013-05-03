# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool_acount do
    user nil
    name "MyString"
    password "MyString"
    password_tips "MyString"
    email "MyString"
    note "MyString"
  end
end
