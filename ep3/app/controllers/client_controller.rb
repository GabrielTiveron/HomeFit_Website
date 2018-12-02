class ClientController < ApplicationController
  def index
    @client_routine = Routine.joins(:client).where(clients:{email:'a@a.com'})
  end

  def food
  end

  def list_trainers
    @trainers = Trainer.all
  end
end
