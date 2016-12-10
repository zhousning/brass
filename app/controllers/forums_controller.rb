class ForumsController < InheritedResources::Base
  load_and_authorize_resource

  private

    def forum_params
      params.require(:forum).permit(:title, :content)
    end
end

