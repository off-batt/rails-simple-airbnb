class FlatsController < ApplicationController
  # create
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new
    end
  end
  # read
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  # update
  def edit

  end

  def update

  end

  # delete
  def destroy

  end

end
