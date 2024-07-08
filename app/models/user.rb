class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :japans, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_japans, through: :likes, source: :japan
  has_many :comments, dependent: :destroy

  validates :name, presence: true #追記
  validates :profile, length: { maximum: 200 } #追記

  def already_liked?(japan)
    self.likes.exists?(japan_id: japan.id)
  end

end
