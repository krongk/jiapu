# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_relationship do
    jiapu nil
    user nil
    relation_type "MyString"
    related_user_id 1
  end
end
