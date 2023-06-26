class Chanel < ApplicationRecord
    has_many :discussions, dependent: :destroy
    has_many :users, through: :discussions
end
