class SalonPolicy < ApplicationPolicy
  attr_reader :user, :salon

  def initialize(user, salon)
    @user = user
    @salon = salon
  end

  def index?
    user.admin? ? true : false
  end

  # @TODO: base on salon user id
  def new?
    user.admin? ? true : false
  end

  def create?
    new?
  end

  def edit?
    user.admin? ? true : false
  end

  def update?
    edit?
  end

  def destroy?
    user.admin? ? true : false
  end
end
