class Article < ApplicationRecord
    has_many :comments
    validates :title, presence: true
    #validates :content, presence: true, message: 'WTF man?'
    validates_presence_of :content, message: 'WTF man?'
end
