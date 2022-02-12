class Course < ApplicationRecord
  has_many :orders
  belongs_to :users

  enum category: [:國文, :英文, :數學, :歷史, :地理, :公民, :物理, :化學, :其它]
  enum currency: [:TWD, :USD, :JPY, :EURO, :others]

  def to_param
    self.friendly_id
  end

  def has_user(user)
    self.orders.where( :user_id => user.id ).first
  end


  validates_presence_of :title, :friendly_id
  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/
end
