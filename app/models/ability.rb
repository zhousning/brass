class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    alias_action :create, :read, :update, :destroy, :to => :crud

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :manager, Task
      can [:create, :update, :read], Task
    elsif user.has_role? :staff, Task
      can :read, Task
    else
      #can :read, :all
    end
  end
end
