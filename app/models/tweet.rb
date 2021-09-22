class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image
  has_many :favorites, dependent: :destroy

    with_options presence: true do
     validates :title
     validates :text
     validates :image
     validates :day
    end
    
  def self.search(search)
   if search !=""
    Tweet.where('title LIKE(?)', "%#{search}%")
   else
     Tweet.all
   end
  end
end
