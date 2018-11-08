class Post < ApplicationRecord
    has_many :comments #relationship with comment model. Post can have many comments
    validates :title, presence: true,
                    length: {minimum: 5}
end
