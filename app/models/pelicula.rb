class Pelicula < ApplicationRecord

has_many :comentarios,  dependent: :destroy


validates :name, presence: true,uniqueness: true,length: {maximum:6}
validates :stars, :inclusion => 0..10,:numericality => {only_integer: true}
validates :year, :numericality =>  {only_integer: true, greater_than_or_equal_to: 1895 , less_than: 2030}
	
end
