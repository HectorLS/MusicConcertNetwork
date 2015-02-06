class Concert < ActiveRecord::Base
	has_many :comments, dependent: :delete_all

	validates :band, presence: true
	validates :description, presence: true, length: { in: 10..300 }
	validates :city, presence: true
	validates :venue, presence: true
	validates :date, presence: true
	validates :price, presence: true, numericality: true


	def self.actual_month
		from = Time.now.in_time_zone.beginning_of_month
		to = Time.now.in_time_zone.end_of_month
		where(date: from..to)
	end

	def self.top_commented
	end


end
