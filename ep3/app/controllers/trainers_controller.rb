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
      
    end
  
  end
  