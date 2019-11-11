class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    list = []
    Character.where(show: self).each do |character|
      list << character.actor.full_name
    end
    list
  end
  
end