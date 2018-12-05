class TrainersController < ApplicationController
  before_action :set_day, only: [:client_exercises, :client_food, :edit_exercise]

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
      @clients = Client.find(params[:id])
      @day = params[:day]
      @client_routine = Routine.joins(:client).where(clients:{email:@clients.email}).where(routines:{day:params[:day]})

    end

    def client_food
      @menu = Menu.joins(:client).where(clients:{id: params[:id]}).where(menus:{day: params[:day]})
      @client = Client.find(params[:id])
      
    end

    def delete_exercise
      @routine = Routine.find(params[:routine_id])
      @day = @routine.day
      if @routine.nil?
        
      else
        redirect_to trainer_client_exercises_path(id: @routine.client_id, :day => @day)

        @routine.destroy
      end
    end

    def edit_exercise
      @routine = Routine.joins(:client,:exercise).where(clients:{id: params[:id]}).where(exercises:{id: params[:exercise_id]}).where(routines:{day: params[:day]})
      @day = params[:day]
      
      if params[:editName] && params[:editTime]
        @exercise_name = params[:editName].capitalize
        @exercise = Exercise.where(desc_exercise: @exercise_name)
        if @exercise.nil?
          @exercise.create
          @routine.update_attributes(:exercise_id => @exercise.id)
          @routine.update_attributes(:duration => params[:editTime])
        else
          @routine.update_attributes(:exercise_id => @exercise.id)
          @routine.update_attributes(:duration => params[:editTime])
        end
      end

    end

    def delete_food
      @menu = Menu.find(params[:menu_id])
      @day = @menu.day
      if @menu.nil?
        
      else
        redirect_to trainer_client_food_path(id: @menu.client_id, :day => @day)

        @menu.destroy
      end
    end

    private 
    def clients_params
      params.require(:clients).permit(:name)
    end

    def set_day

      case params[:day]
        when "sunday"
          @dia = 'no domingo'
        when "monday"
          @dia = 'na segunda-feira'
        when "tuesday"
          @dia = 'na terça-feira'
        when "wednesday"
          @dia = 'na quarta-feira'
        when "thursday"
          @dia = 'na quinta-feira'
        when "friday"
          @dia = 'na sexta-feira'
        when "saturday"
          @dia = 'no sábado'
        else
      end

    end
  end
  