# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jinian_item do
    jinian_cate nil
    user_id 1
    upload_id 1
    title "MyString"
    body "MyText"
    note_date "2013-04-28"
  end
end
