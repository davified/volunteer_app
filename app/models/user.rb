class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :usertasks
  has_many :tasks, through: :usertasks

  has_many :skills

  def volunteer(task)
    usertasks.create(task_id: task.id, registered: true)
  end

end
