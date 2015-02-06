class ConcertsController < ApplicationController

def index
	# @pop_concerts = Concert.popular
	# @month_concerts = Concert.this_month(actual_month)
	@concerts = Concert.all
end

def show
	@concert = Concert.find params[:id]
end

def new
	@concert = Concert.new
end

def create
	@concert = Concert.new concert_params
	if @concert.save
		redirect_to concert_path(@concert.id)
	else
		render 'new'
	end
end

def edit
end


def destroy
end


private
def concert_params
	params.require(:concert).permit(:band, :description, :city, :venue, :date, :price)
end
end
