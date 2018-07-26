class Building < ApplicationRecord

  has_many :offices
  has_many :companies, through: :offices

  def available_floors
    available_floors = (1..self.number_of_floors).to_a
    self.offices.each do |office|
      available_floors.delete(office.floor)
    end
    available_floors
  end

end
