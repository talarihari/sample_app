class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :registerable,:recoverable, :rememberable, :trackable,
  :database_authenticatable, :authentication_keys => [:username]
validates :username, uniqueness: true	
def email_required?
    false
end
def will_save_change_to_email?
    false
  end
end
