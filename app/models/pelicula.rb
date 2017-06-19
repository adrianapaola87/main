class Pelicula < ApplicationRecord

has_many :comentarios,  dependent: :destroy


validates :name, presence: true,uniqueness: true,length: {maximum:30}
validates :stars, :inclusion => 0..10,:numericality => {only_integer: true}
validates :year, :numericality =>  {only_integer: true, greater_than_or_equal_to: 1895 , less_than: 2030}


def self.search(search)
  	#where("actor like ?", "%" + "%#{search}%" + "%")
  	where("name like ?", "%" + "%#{search}%" + "%")
	end

	def self.search_director(search)
  	#where("actor like ?", "%" + "%#{search}%" + "%")
  	where("director like ?", "%" + "%#{search}%" + "%")
	end

	def self.search_year(search_year)
  	where(year: search_year)
	end

	def self.search_genre(search_genre)
  	where("genre like ?", "%" + "%#{search_genre}%" + "%")
	end

end

