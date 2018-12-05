class LibrmController < ApplicationController

  def function
    if current_trainer.nil? && current_client.nil?
      redirect_to new_client_session_path

    elsif current_client.nil?
      redirect_to trainers_index_url

    elsif current_trainer.nil?
      redirect_to client_index_url
    end
  end

  def complete_sign_up
  end

  def update_session_client
    current_client.update(:name => params[:name], :age => params[:age], :height => params[:height], :weight => params[:weight], :condition => params[:condition])
    redirect_to client_index_path
  end

  def complete_sign_up_trainer
  end

  def update_session_trainer
    current_trainer.update(:name => params[:name], :age => params[:age], :formation => params[:formation], :institution => params[:institution])
    redirect_to 'trainers/index'
  end

end
