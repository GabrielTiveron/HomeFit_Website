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
    if client_signed_in?
      Routine.where(:id => params[:id]).update(:status => true)
      redirect_to client_index_path
    else
      redirect_to :root
    end
  end

  def trainer_search
    if client_signed_in?
      @trainer = Trainer.where(:name => params[:name_trainer])
    else
      redirect_to :root
    end
  end

  def trainer_profile
    if client_signed_in?
      @trainer = Trainer.find(params[:id])
    else
      redirect_to :root
    end
  end

  def take_trainer
    if client_signed_in
      current_client.trainers << Trainer.find(params[:id])
      redirect_to client_index_path
    else
      redirect_to :root
    end
  end

end
