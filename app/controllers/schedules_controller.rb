class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :allday, :schedulememo))
    if @schedule.save
      redirect_to root_path, notice: 'スケジュールを登録しました'
    else
      render 'new' ,status: :unprocessable_entity
    end
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startdate, :enddate, :allday, :schedulememo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to root_path
    else
      render 'edit' ,status: :unprocessable_entity
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to root_path, status: :see_other
  end
end
