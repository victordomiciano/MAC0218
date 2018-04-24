class Login < ApplicationRecord
  validates :nome, presence: true ,
            length: {minimum: 3}
  validates :apelido, presence: true
end
