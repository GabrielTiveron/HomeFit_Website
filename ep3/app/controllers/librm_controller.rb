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
end
