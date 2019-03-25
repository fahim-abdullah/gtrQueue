class Order < ApplicationRecord 
	belongs_to :user
	validates :user_id, presence: true
	
	after_create_commit { OrderBroadcastJob.perform_later self }  
	after_update_commit { OrderBroadcastJob.perform_later self }  
	after_destroy { OrderBroadcastJob.perform_later self }  

	# after_create :located_datetime, :documents_datetime, :delivery_time


	# def located_datetime
	#     if self.located_time != nil
	#       self.located_time.to_datetime
	#     end
 #  	end

 #  	def documents_datetime
	#     if self.arranged_time != nil
	#       self.arranged_time.to_datetime
	#     end
 #  	end

 #  	def delivery_datetime
	#     if self.delivery_time.present?
	#       self.delivery_time.to_datetime
	#     end
 #  	end

end