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
      redirect_to root_path
    else
      render 'new'
    end
  end
end
