class Concert < ActiveRecord::Base
	has_many :comments, dependent: :delete_all

	validates :band, presence: true
	validates :description, presence: true, length: { in: 10..300 }
	validates :city, presence: true
	validates :venue, presence: true
	validates :date, presence: true
	validates :price, presence: true, numericality: true

end
