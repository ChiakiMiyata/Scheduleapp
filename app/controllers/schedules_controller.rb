class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :allday, :schedulememo))
    @schedule.save
    redirect_to root_path
  end
end