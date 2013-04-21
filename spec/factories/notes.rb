# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    user nil
    note_date "2013-04-21"
    title "MyString"
    body "MyText"
    image_path "MyString"
  end
end
