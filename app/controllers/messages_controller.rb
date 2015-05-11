class MessagesController < ApplicationController

  def index
    @messages = Message.all()
  end

  def show
  	@message = Message.find(params[:id])
  end

  def create
  	@message = params[:message]
    @message = Message.new(direction: 'in',message: params[:message], source_ip: request.remote_ip)
  	@message.save

  	respond_to do |format|
      format.html {redirect_to '/messages'}
  	  format.json {render json: params}
  	end
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy
  end

  def update
  end
end
