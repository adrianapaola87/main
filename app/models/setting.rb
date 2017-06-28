
 
class Setting < ApplicationRecord
  belongs_to :user

  

  validates :country, presence: {message: "no has puesto pais"} 
   validates :country, length: {minimum: 2, message: "Dos caracteres o mas"}
  validates :language, presence: { message: "No has puesto idioma"}
  validates :language, length: {minimum: 2, message: "Dos caracters o mas"}
end