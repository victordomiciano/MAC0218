class User < ApplicationRecord
  validates :login, presence: true ,
            length: {minimum: 3}
  validates :password, presence: true
end
