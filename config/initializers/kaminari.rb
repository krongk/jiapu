# ActiveAdmin uses Kaminari for pagination and if you use will_paginate in your app, 
# you need to configure an initializer for Kaminari to avoid conflicts. Put this in config/initializers/kaminari.rb
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari

  if defined?(WillPaginate)
    module WillPaginate
      module ActiveRecord
        module RelationMethods
          def per(value = nil) per_page(value) end
          def total_count() count end
        end
      end
      module CollectionMethods
        alias_method :num_pages, :total_pages
      end
    end
  end
end