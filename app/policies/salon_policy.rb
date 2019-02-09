class SalonPolicy < ApplicationPolicy
  attr_reader :user, :salon

  def initialize(user, salon)
    @user = user
    @salon = salon
  end

  def index?
    user.admin? ? true : false
  end

  def edit?
    user.admin? ? true : false
  end

  def update?
    edit?
  end
end
