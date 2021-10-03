class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :nationality
  belongs_to :occupation

  with_options presence: true do
    validates :nickname
    validates :gender_id
    validates :user_age, format: {with: /\A[0-9]+\z/, message: "is invalid. Input only number"}
    validates :nationality_id
    validates :occupation_id
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :gender_id
    validates :nationality_id
    validates :occupation_id
  end

  validates :password,
            format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/, message: 'is invalid. Include both letters and numbers' }

end
