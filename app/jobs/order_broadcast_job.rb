class OrderBroadcastJob < ApplicationJob  
  queue_as :default  

  def perform(order)  
    ActionCable.server.broadcast 'order_channel', order
  end

  private   
    def render(order)  
        ApplicationController.renderer.render order
    end  
end