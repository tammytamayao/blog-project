class Article < ApplicationRecord
    validates :title, presence: true # content of title should not be NULL
    validates :body, length: {minimum: 5} # content of body should not be NULL and must be atleast 20 characters
    validates :description, length: {minimum: 5} # content of body should not be NULL and must be atleast 20 characters
end