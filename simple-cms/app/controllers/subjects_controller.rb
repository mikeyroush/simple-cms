class SubjectsController < ApplicationController

  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(visible: true)
  end

  def create
    # instantiate a enw object using form parameters
    @subject = Subject.new(subject_params)
    # save the object
    if @subject.save
      # if the save succeeds, redirect to the index action
      redirect_to subjects_path
    else
      # if save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end

end
