class CountriesController < ApplicationController
def index
	@countries = Countrie.all
end

def show
	@countrie = Countrie.find(params[:id])
end 

def new
    @countrie = Countrie.new
end

def create
  @countrie= Countrie.new(countrie_params)
   if @countrie.save
    redirect_to countries_path
  else
    render 'new'
  end
end
 

def edit
  @countrie = Countrie.find(params[:id])
end

def update
  @countrie = Countrie.find(params[:id])

  if @countrie.update_attributes(countrie_params)
       redirect_to countries_path
  else
    render :edit
  end
end


def destroy
   @countrie = Countrie.find(params[:id])
   @countrie.destroy
   redirect_to countries_path
end


private
def countrie_params
  params.require(:countrie).permit(:name)
end  


end
