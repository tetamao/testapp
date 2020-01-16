class Article < ApplicationRecord
    has_many :comments
    belongs_to :user
    validates :user_id, presence: true
    validates :title, presence: true,
                        length: {minimum: 5}
                        validates :text, presence: true,length:{minimum: 10, maximum: 300}
end
