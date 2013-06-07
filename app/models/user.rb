#encoding: utf-8
class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  #Login with name or Email
  attr_accessor :login
  attr_accessible :login

  has_one  :user_info
  has_many :zuopin_cates
  has_many :zuopin_items
  has_many :huiyi_cates
  has_many :huiyi_items
  has_many :jinian_cates
  has_many :jinian_items
  has_one  :tool_acount
  has_many :tool_items
  has_many :notes
  has_many :resource_cates
  has_many :resource_items


  before_create :set_default_roles
  after_create :set_default_cates

  #I want to access current_user on Model
  #http://stackoverflow.com/questions/3742785/rails-3-devise-current-user-is-not-accessible-in-a-model#3742981
  class << self
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  end
  
  #Login with name or Email
  #https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  private
  def set_default_roles
    self.roles = [Role.find_or_create_by_name('user')]
  end

  def set_default_cates
    #create tool acount
    ToolAcount.create(:user_id => self.id, :name => '', :password => '')
    #create zuopin cate
    self.zuopin_cates.create(:cate => 'string', :title => '小说、散文')
    self.zuopin_cates.create(:cate => 'string', :title => '诗词、韵文')
    self.zuopin_cates.create(:cate => 'image', :title => '摄影')
    self.zuopin_cates.create(:cate => 'image', :title => '字画')
    self.zuopin_cates.create(:cate => 'string', :title => '奇思妙想')
    #create huiyi cate
    self.huiyi_cates.create(:title => '回忆录')
    #create jinian cate
    j_cate1 = self.jinian_cates.create!(:parent_id => 0, :title => '毕业纪念册')
    j_cate2 = self.jinian_cates.create!(:parent_id => 0, :title => '结婚纪念册')
    self.jinian_cates.create(:parent_id => 0, :title => '生日纪念册')
    self.jinian_cates.create(:parent_id => 0, :title => '新年聚会纪念册')
    self.jinian_cates.create(:parent_id => 0, :title => '游记')

    self.jinian_cates.create(:parent_id => j_cate1.id, :title => '幼儿园纪念')
    self.jinian_cates.create(:parent_id => j_cate1.id, :title => '小学纪念')
    self.jinian_cates.create(:parent_id => j_cate1.id, :title => '初中纪念')
    self.jinian_cates.create(:parent_id => j_cate1.id, :title => '高中纪念')
    self.jinian_cates.create(:parent_id => j_cate1.id, :title => '大学纪念')
    
    self.jinian_cates.create(:parent_id => j_cate2.id, :title => '恋爱故事')
    self.jinian_cates.create(:parent_id => j_cate2.id, :title => '婚礼纪念')
    self.jinian_cates.create(:parent_id => j_cate2.id, :title => '结婚周年')
  
    UserInfo.create(:user_id => self.id, :email => self.email)
  end

end
