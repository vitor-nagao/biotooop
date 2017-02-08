class Tag < ApplicationRecord
	validates :name, length: {maximum: 30}
	def self.search(search) #self.でクラスメソッドとしている
		if search
			Tag.where(['name LIKE ?', "%#{search}%"])
		else
			Tag.all
		end
	end
end
