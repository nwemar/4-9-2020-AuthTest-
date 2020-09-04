class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#  def superadmin?
#   has_role?(:superadmin)
# end

# def supervisor?
#   has_role?(:supervisor)
# end 

# def student?
#   has_role?(:student)
# end 

 # after_create :default_role

 #  private
 #  def default_role
 #    self.roles << Role.where(:name => 'client').first
 #  end
  
end
