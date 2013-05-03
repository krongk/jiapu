# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :huiyi_item do
    user nil
    huiyi_cate nil
    note_date "2013-04-26"
    title "MyString"
    body "MyText"
  end
end
