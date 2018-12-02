class TrainersController < ApplicationController

<<<<<<< Updated upstream
=======
  def function
    if current_trainer.nil? && current_client.nil?
      redirect_to new_client_session_path

    elsif current_client.nil?
      redirect_to trainers_index_url
    
    elsif current_trainer.nil?
      redirect_to trainers_index_url
    end
  end

>>>>>>> Stashed changes
  def sign_out_trainer
    @trainer = Trainers.find(params[:id])
    trainer.sign_out
  end

  def index
<<<<<<< Updated upstream

=======
    # @trainer = Trainer.find(params[:id])
    # @trainer = Trainer.first
    @trainer = Trainer.first

    @clients = @trainer.clients
>>>>>>> Stashed changes
  end

end
