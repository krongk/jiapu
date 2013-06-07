#source 'http://rubygems.org'
source 'http://ruby.taobao.org'
gem 'rails', '3.2.12'
gem 'mysql2'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
group :development do
  gem 'guard-livereload'
end

gem 'jquery-rails'
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "cucumber-rails", ">= 1.3.1", :group => :test, :require => false
gem "launchy", ">= 2.2.0", :group => :test
gem "capybara", ">= 2.0.2", :group => :test
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "bootstrap-sass", ">= 2.3.0.0"
gem "devise", ">= 2.2.3"
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.1.0"
gem "quiet_assets", ">= 1.0.2", :group => :development
gem "figaro", ">= 0.6.3"
gem "better_errors", ">= 0.7.2", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]

gem 'jquery-fileupload-rails'
gem 'paperclip'
#gem 'twitter-bootstrap-rails'

#not for windows but for linux
 gem "libv8", ">= 3.11.8"
 gem "therubyracer", ">= 0.11.3", :group => :assets, :platform => :ruby, :require => "v8"

#==I18n
	# Central point to collect locale data for use in Ruby on Rails.
	# Add below to config to include only I18n which you want:
	# 	config.i18n.available_locales = ['es-CO', :de]
gem 'rails-i18n', '~> 0.1.8'
# Creates yaml locale files for models and views when using the model / scaffold_controller generators.
gem 'i18n_yaml_generator', '~> 0.0.1'

#===Admin
gem 'activeadmin', '~> 0.6.0'
gem "meta_search",    '>= 1.1.0.pre'

#===WYSIWYG Editor
gem 'tinymce-rails', '~> 3.4.7'
#gem 'tinymce-rails-imageupload', '~> 3.5.6.3'
#===Chinese Misic
gem 'chinese_pinyin'

#===Pagination
	#debug: ActiveAdmin undefined local variable or method `per', so must down will_paginate '3.0.2' to '3.0.pre2'
	# gem 'will_paginate', :git => 'git://github.com/mislav/will_paginate.git'
	# the will_patinate I18n is here: https://github.com/tigrish/will-paginate-i18n
	#gem "will_paginate", "3.0.pre2"

	#setup bootstrap patinate: https://github.com/yrgoldteeth/bootstrap-will_paginate
gem 'bootstrap-will_paginate'

#https://github.com/kjvarga/sitemap_generator
#gem 'sitemap_generator'

#==Forager
	# gem 'mechanize', '2.0.1'
	# gem 'hpricot', '0.8.6'

#for background job
# gem 'sidekiq', '2.5.4'

#bootstrap font awesome
gem 'font-awesome-sass-rails'
