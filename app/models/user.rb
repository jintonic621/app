class User < ApplicationRecord
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  validates :img_name, {presence: true}
  validates :name, {presence: true}
end
