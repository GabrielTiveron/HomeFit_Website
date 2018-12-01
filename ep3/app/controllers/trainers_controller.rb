class TrainersController < ApplicationController

  def function
    if current_trainer.nil? && current_client.nil?
      redirect_to new_client_session_path

    elsif current_client.nil?
      redirect_to trainers_index_url
    
    elsif current_trainer.nil?

    end
  end
  def sign_out_trainer
    @trainer = Trainers.find(params[:id])
    trainer.sign_out 
  end
  def index
    
  end
end
