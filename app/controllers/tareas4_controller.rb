class Tareas4Controller < ApplicationController
  before_action :authenticate_user!

  def index
@tareas4 = Tarea4.all

  end

  def new
    @tarea4 = Tarea4.new
  end

  def destroy
    @tarea4 = Tarea4.find(params[:id])
    @tarea4.destroy
    redirect_to tareas4_path
  end

  def edit
    @tarea4 = Tarea4.find(params[:id])
  end

  def update 
    @tarea4 = Tarea4.find(params[:id])
    if @tarea4.update(tarea4_params)
      redirect_to tareas4_path(@tarea4)
    else
      render 'edit'
    end
  end

  def create
    @tarea4 = current_user.tarea4.new(tarea4_params)
  
  if @tarea4.save
    flash[:notice] = 'se salvo la tarea correctamente'
    redirect_to tareas4_path(@tarea4)
  else
    flash[:error] = @tarea4.errors.full_messages
    render :new
  end
  end

  def show
    @tarea4 = Tarea4.find(params[:id])
  end

  private

  def tarea4_params
    params.require(:tarea4).permit(:title, :description)
  end
end
