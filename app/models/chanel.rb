class Chanel < ApplicationRecord
    has_many :discussions, dependent: :destroy
    has_many :users, through: :discussions

    extend FriendlyId
    friendly_id :chanel, use: :slugged

    def shoul_generate_new_friendly_id?
        chanel_changed?
    end
end
