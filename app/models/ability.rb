# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin) 
      # alias_action :index, :to => :read   
    admin ||= Admin.new
    if admin.roleid == 1
      can :new, Adminhome
      can :index, Supervisor
      can :index, Student

    elsif admin.roleid == 2      
       can :index, Supervisor
       can :index, Student

    elsif admin.roleid == 3      
     can :manage, Student
   end
end
end
