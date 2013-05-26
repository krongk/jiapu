# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resource_item do
    user nil
    resource_cate ""
    resource_type "MyString"
    resource_name "MyString"
    resource_path "MyString"
    resource_note "MyText"
  end
end
