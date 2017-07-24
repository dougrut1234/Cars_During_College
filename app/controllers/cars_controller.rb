class CarsController < ApplicationController

before_action :authenticate_user!


def index
	@cars = Car.order('town ASC')
end

def show
	@car = Car.find(params[:id])
end
 
def new
	@car = Car.new
end

def create
	@car = current_user.cars.create(car_params)
	if @car.valid?
		flash[:notice] = "Your location has been saved."
		redirect_to "/cars/"
	else
		flash[:notice] = "Your profile was NOT created."
		render 'new'
	end
end

def edit
	@car = Car.find(params[:id])

end

	

def update
	@car = Car.find(params[:id])
	@car.owner = params[:car][:owner]
	@car.email = params[:car][:email]
    @car.town = params[:car][:town]
    @car.brand = params[:car][:brand]
    @car.model = params[:car][:model]
    @car.year = params[:car][:year]
    @car.mileage = params[:car][:mileage]
    @car.available_on = params[:car][:available_on]
    @car.available_until = params[:car][:available_until]
    @car.description = params[:car][:description]
    @car.rent = params[:car][:rent]
	if @car.save
		redirect_to "/cars/"
	else
		redirect_to "/"
	end
end

def destroy
    Car.find(params[:id]).destroy
    	redirect_to "/cars/"
  end


private
    
    def car_params
      params.require(:car).permit(:owner, :email, :town, :user_id, :brand, :model, :available_until, :rent, :year, :mileage, :available_on, :description, :avatar)
    
    end

end

