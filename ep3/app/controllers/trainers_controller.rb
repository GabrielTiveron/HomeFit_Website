class TrainersController < ApplicationController

    def function
      if current_trainer.nil? && current_client.nil?
        redirect_to new_client_session_path
  
      elsif current_client.nil?
        redirect_to trainers_index_url
      
      elsif current_trainer.nil?
        redirect_to trainers_index_url
      end
    end

    def index
      @clients = Client.find_by_sql("SELECT * FROM clients
        INNER JOIN clients_trainers ON clients_trainers.client_id = clients.id
        WHERE clients_trainers.trainer_id = #{current_trainer.id}")
    end

    def clients
      @clients = Client.find(params[:id])
    end

    def client_exercises
      @routines = Routine.joins(:client).where(clients:{id: params[:id]})
      @clients = Client.find(params[:id])
      @dia = params[:day]
    end

    def client_food
      
    end

    private 
    def clients_params
      params.require(:clients).permit(:name)
    end

  end
  