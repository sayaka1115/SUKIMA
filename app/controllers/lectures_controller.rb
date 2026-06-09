class LecturesController < ApplicationController
  def index
  end

  def new
  end
end


class LecturesController < ApplicationController
  def index
   @lectures = Lecture.all
  end
  
  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)

    if @lecture.save 
      redirect_to action: 'index'
    else 
      redirect_to action: 'new'
    end
  end

  def destroy
   lecture = Lecture.find(params[:id])
   lecture.destroy

   redirect_to lectures_index_path
  end


  private

  def lecture_params
    params.require(:lecture).permit(:name,:username, :overall,:level)
  end
end



