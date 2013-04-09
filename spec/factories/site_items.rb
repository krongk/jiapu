# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site_item do
    site_cate nil
    site_url "MyString"
    site_title "MyString"
    site_username "MyString"
    site_password "MyString"
    site_password_tips "MyString"
    note "MyText"
    visit_count 1
    rate_count 1
  end
end
