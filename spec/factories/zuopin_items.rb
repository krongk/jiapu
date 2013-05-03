# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :zuopin_item do
    user nil
    zuopin_cate nil
    title "MyString"
    body "MyText"
  end
end
