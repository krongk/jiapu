# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool_item do
    user nil
    title "MyString"
    name "MyString"
    password "MyString"
    password_tips "MyString"
    note "MyString"
  end
end
