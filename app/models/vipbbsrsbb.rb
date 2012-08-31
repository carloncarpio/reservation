class Vipbbsrsbb < ActiveRecord::Base

	def self.find_section(section="")
		section = Vipbbsrsbb.where(:section => section)
	end

	def self.find_reserve(company="")
		reserve = Vipbbsrsbb.where(:company_name => company)
	end

end
