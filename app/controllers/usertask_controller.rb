class UsertaskController < ApplicationController

    def volunteer
      @usertask = Usertask.new
      @usertask.task_id = params[:id]   #how to get params id?
      @usertask.user_id = params[:id]
      @usertask.registered = true
      @usertask.save
    end

    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def task_params
        params.require(:task).permit(:title, :description, :categories, :skills, :images)
      end
end
