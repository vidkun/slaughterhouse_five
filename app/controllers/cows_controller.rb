class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]

  def index
    @cows = Cow.all
  end

  def show
  end

  def new
    @cow = Cow.new
  end

  def edit
  end

  def create
    @cow = Cow.new(cow_params)

    respond_to do |format|
      if @cow.save
        format.html { redirect_to cows_url, notice: "Cow #{@cow.tag_number} was successfully created." }
        format.json { render :show, status: :created, location: @cow }
      else
        format.html { render :new }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cow.update(cow_params)
        format.html { redirect_to cows_url, notice: "Cow #{@cow.tag_number} was successfully updated." }
        format.json { render :show, status: :ok, location: @cow }
      else
        format.html { render :edit }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    begin
      @cow.destroy
      flash[:notice] = "cow #{cow.tag_number} deleted!"
    rescue StandardError => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to cows_url }
      format.json { head :no_content }
    end
  end

  private

  def set_cow
    @cow = Cow.find(params[:id])
  end

  def cow_params
    params.require(:cow).permit(:chuck_reserved,
                                :chuck_total,
                                :rib_reserved,
                                :rib_total,
                                :brisket_reserved,
                                :brisket_total,
                                :shank_reserved,
                                :shank_total,
                                :plate_reserved,
                                :plate_total,
                                :short_loin_reserved,
                                :short_loin_total,
                                :sirloin_reserved,
                                :sirloin_total,
                                :top_sirloin_reserved,
                                :top_sirloin_total,
                                :bottom_sirloin_reserved,
                                :bottom_sirloin_total,
                                :tenderloin_reserved,
                                :tenderloin_total,
                                :round_reserved,
                                :round_total,
                                :flank_reserved,
                                :flank_total,
                                :tongue_reserved,
                                :tongue_total,
                                :total_weight,
                                :tag_number)
  end
end
