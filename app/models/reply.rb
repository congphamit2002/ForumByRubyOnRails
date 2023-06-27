class Reply < ApplicationRecord
    belongs_to :user
    belongs_to :discussion

    validates :reply, presence: true
    resourcify

    extend FriendlyId
    friendly_id :reply, use: :slugged

    def shoul_generate_new_friendly_id?
        reply_changed?
    end
end
