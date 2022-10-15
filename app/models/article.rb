class Article < ApplicationRecord
    #constraints for input
    validates :title, presence: true # content of title should not be NULL
    validates :body, length: {minimum: 5} # content of body should be atleast 5 characters
    validates :description, length: {minimum: 5} # content of description should be atleast 5 characters
end