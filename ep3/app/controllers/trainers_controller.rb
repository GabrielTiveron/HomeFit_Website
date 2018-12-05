class TrainersController < ApplicationController

  def sign_out_trainer
    @trainer = Trainers.find(params[:id])
    trainer.sign_out
  end
  def index
    if !current_trainer.nil? && !current_trainer.name.nil?

  elsif current_trainer.name.nil?
    redirect_to complete_session_path
  else
    redirect_to :root
  end
  end
end
