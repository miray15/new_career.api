class CodesController < ApplicationController

def index 
  @codes = Code.all 
  render :index 
end 

def create
  @code = Code.create(
    name: params[:name],
    location: params[:location],
    salary: params[:salary],
  )
  render :show
end
end
