class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :state
  accepts_nested_attributes_for :state
  has_one :order, dependent: :destroy

  def with_state
    self
  end
end
