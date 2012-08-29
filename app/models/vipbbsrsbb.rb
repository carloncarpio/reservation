class Vipbbsrsbb < ActiveRecord::Base

	def self.find_section(section="")
		section = Vipbbsrsbb.where(:section => section)
	end

end
