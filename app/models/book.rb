class Book < ActiveRecord::Base

	has_many :rents

	def self.search(search)
		if search.present?
			where('title @@ :q', q: search)
		else
			[]
		end
	end	

end
