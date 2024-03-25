class Post < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, length: { minimum: 5 }
  validates :description, length: { maximum: 55 }

  before_save do
    self.title = self.title + " Thiago"
  end
end
