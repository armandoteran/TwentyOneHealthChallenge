class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :state
  has_one :order, dependent: :destroy
  accepts_nested_attributes_for :state

  def with_state
    self
  end

  def user_age
    ac = AgeCalculator.new(self.date_of_birth)
    ac.age
  end

  def old_enough?
    state_minimum_age = State.find(self.state_id).minimum_age
    user_age >= state_minimum_age
  end

  def service_offered?
    State.find(self.state_id).service_offered
  end
end
