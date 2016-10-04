class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: {with: /@/}

  validates :name, presence: true, uniqueness: true, length: {in: 7..30}
end
