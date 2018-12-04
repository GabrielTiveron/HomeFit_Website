class ClientController < ApplicationController

  def index
    if client_signed_in?
      @client_routine = Routine.joins(:client).where(clients:{id:current_client.id})
    else
      redirect_to :root
    end
  end

  def food
    if client_signed_in?
      @client_menu = Menu.joins(:client).where(clients:{id:current_client.id})
    else
      redirect_to :root
    end
  end

  def list_trainers
    if client_signed_in?
      @trainers = Trainer.all
    else
      redirect_to :root
    end
  end

  def exercise_update
    Routine.where(:id => params[:id]).update(:status => true)
    redirect_to client_index_path
  end

  def trainer_search
    @trainer = Trainer.where(:name => params[:name_trainer])
  end

  def trainer_profile
    @trainer = Trainer.find(params[:id])
  end

end
