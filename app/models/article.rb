class Article < ApplicationRecord
  #calling @article.save will return false if invalid
  validates :title, presence: true, length: { minimum: 5 }
end
