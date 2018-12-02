class ClientController < ApplicationController
  def index
    redirect_to :root if current_client.nil?

    @client_routine = Routine.joins(:client).where(clients:{id:current_client.id})
  end

  def food
    redirect_to :root if current_client.nil?

    @client_menu = Menu.joins(:client).where(clients:{id:current_client.id})
    @foodm = Food.joins(:meal,:menu,:clients).where(clients:{id:current_client.id})
  end

  def list_trainers
    redirect_to :root if current_client.nil?

    @trainers = Trainer.all
  end
end
