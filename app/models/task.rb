class Task < ApplicationRecord
  acts_as_votable

  has_many :usertasks
  has_many :users, through: :usertasks

  has_many :comments

  def add_owner(current_owner)
    Usertask.create(user_id: current_owner.id, task_id: id, is_owner: true)

    # usertasks.create(user_id: current_owner.id, is_owner: true)  # another way to do the same thing
  end

end
