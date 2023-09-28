class GreetingsController < ApplicationController
  def get_message
    message = Message.order('RANDOM()').first
    render json: { message: message.content }
  end
end
