class MessagesController < ApplicationController

  def index
    @messages = Message.all()
  end

  def show
  	@message = Message.find(params[:id])
  end

  def create
  	@message = params[:message]
  	#t.string   "direction"
    #t.text     "message"
    #t.string   "source_ip"
    #t.string   "destination_ip"
    #t.string   "source_mac"
    #t.string   "destination_mac"
    #t.text     "remarks"

  	@message = Message.new(direction: 'in',message: params[:message], source_ip: params[:source_ip])
  	@message.save
  	respond_to do |format|
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
