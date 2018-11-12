class DvdsController < ApplicationController
  def index
    @dvds = Dvd.all
  end

  def show
    @dvd = Dvd.find(params[:id])
  end

  def new
    @dvd = Dvd.new
  end

  def edit
    @dvd = Dvd.find(params[:id])
  end

  def create
    @dvd = Dvd.new(dvd_params)

    if @dvd.save
      redirect_to @dvd
    else
      render 'new'
    end
  end

  def update
    @dvd = Dvd.find(params[:id])

    if @dvd.update(dvd_params)
      redirect_to @dvd
    else
      render 'edit'
    end
  end

  def destroy
    @dvd = Dvd.find(params[:id])
    @dvd.destroy

    redirect_to dvds_path
    end

  private

  def dvd_params
    params.require(:dvd).permit(:title, :year, :genre, :category)
  end
end
