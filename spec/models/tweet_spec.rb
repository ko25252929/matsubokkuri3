require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe '新規投稿' do
   context '新規投稿できるとき' do
     it 'titleとtext、imageとdayが存在すれば投稿できる' do
       expect(@tweet).to be_valid
     end
   end
  
   context '新規投稿できないとき' do
     it 'titleが空では投稿できない' do
       @tweet.title = ''
       @tweet.valid?
       expect(@tweet.errors.full_messages).to include("Title can't be blank")
     end
     it 'dayが空では投稿できない' do
       @tweet.day = ''
       @tweet.valid?
       expect(@tweet.errors.full_messages).to include("Day can't be blank")
     end

     it 'imageが空では登録できない' do
       @tweet.image = nil
       @tweet.valid?
       expect(@tweet.errors.full_messages).to include("Image can't be blank")
     end

     it 'textが空では登録できない' do
       @tweet.text = ''
       @tweet.valid?
       expect(@tweet.errors.full_messages).to include("Text can't be blank")
     end
    end
  end
end
