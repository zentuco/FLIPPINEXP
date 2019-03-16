class ExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create? #no need new because it calls create
    return true
  end

  def update?
    user
  end

  def destroy?
    user
  end
end
