class Rent < ActiveRecord::Base

	belongs_to :book
	

	def self.tardy
		lates = []
		Rent.all.each do |r|

			if r.due_date < DateTime.now
				
				lates << r
			end
		
		end	
		return lates
	end	

	def self.warn(lates)

		lates.each do |r|

			RentMailer.rent_late(r).deliver
		
		end	

	end	
end
