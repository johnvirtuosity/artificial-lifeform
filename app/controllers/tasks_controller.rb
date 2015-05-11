require 'httparty'

class TasksController < ApplicationController

  def index
	@tasks = Task.all
	#output = `sudo ruby ~/piface/examples/led.rb`
	base_uri = 'http://192.168.1.184:3000/messages'
	#@response = HTTParty.get(base_uri)
	#puts "From httparty - #{@response}"
    @response = HTTParty.post(base_uri, :query => {:message => "This message is from laptop",:source_ip => request.ip})

	render :tasks
  end
  
  def show
	@task = Task.find(params[:id])
  end
end
