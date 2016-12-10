class TasksController < InheritedResources::Base
  load_and_authorize_resource

  private

    def task_params
      params.require(:task).permit(:title, :content)
    end
end

