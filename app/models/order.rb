class Order < ApplicationRecord 
	after_create_commit { OrderBroadcastJob.perform_later self }  
	after_update_commit { OrderBroadcastJob.perform_later self }  
	after_destroy { OrderBroadcastJob.perform_later self }  
end