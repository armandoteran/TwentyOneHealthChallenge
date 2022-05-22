class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :state, optional: true
  accepts_nested_attributes_for :state

  def with_state
    build_state if state.nil?
    self
  end
end
