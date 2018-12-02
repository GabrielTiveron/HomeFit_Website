class TrainersController < ApplicationController

  def sign_out_trainer
    @trainer = Trainers.find(params[:id])
    trainer.sign_out
  end
  def index

  end
end
