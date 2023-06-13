class Tareas4Controller < ApplicationController
    before_filter :restrict_access
    respond_to :json

    def index
      respond_with Tarea4.all
    end

    def show
      respond_with = Tarea4.find(params[:id])
    end

    def create
      respond_with Tarea4.create(params[:tarea4])
    end

    def update 
      respond_with Tarea4.update(params[:id], params[:tarea4])
    end

    def destroy
        respond_with Tarea4.destroy(params[:id])        
    end


    private

    #def restrict_access
    #   api_key = ApiKey.find_by_access_token(params[:access_token])
    #  head :unauthorized unless api_key
    #end
    
    def restrict_access
      authenticate_or_request_with_http_token do |token, options|
        ApiKey.exists?(access_token: token)
      end
    end
   
   
    