class RoutinesController < ApplicationController
  
  def index
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = current_user.routine.new(routine_params)
    if @routine.save
      redirect_to routine_path(@routine), success: 'ルーティンを投稿しました'
    else
      flash.now[:danger] = 'ルーティンを投稿できませんでした'
      render :new
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:title, :content)
  end
end

