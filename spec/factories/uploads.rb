# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
    resource_id 1
    upload_file_name "MyString"
    upload_content_type "MyString"
    upload_file_size "MyString"
    upload_updated_at ""
  end
end
