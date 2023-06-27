class Discussion < ApplicationRecord
    belongs_to :chanel
    belongs_to :user
    has_many :replies, dependent: :destroy

    validates :title, :content, presence: true
    resourcify

    extend FriendlyId
    friendly_id :title, use: :slugged

    def shoul_generate_new_friendly_id?
        title_changed?
    end
end
