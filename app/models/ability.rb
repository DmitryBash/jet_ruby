class Ability
  include CanCan::Ability
  attr_reader :user

  def initialize(user)
    user ||= User.new(role: 2)

    if user.admin?
      admin_abilities
    elsif user.user?
      user_abilities
    else
      guest_abilities
    end
  end

  def guest_abilities
    can [:users], :all
  end

  def admin_abilities
    can :manage, :all
  end

  def user_abilities
    guest_abilities
    can :show, [WeekDay, Profile]
    can :create, [Order]
    can :update, [Profile]
  end
end
