class ChanelsController < ApplicationController
  before_action :set_chanel, only: %i[ show edit update destroy ]

  # GET /chanels or /chanels.json
  def index
    @chanels = Chanel.all
    @discussions = Discussion.all.order('created_at desc')
  end

  # GET /chanels/1 or /chanels/1.json
  def show
    @discussions = Discussion .where('chanel_id = ?', @chanel.id)
    @chanels = Chanel.all
  end

  # GET /chanels/new
  def new
    @chanel = Chanel.new
  end

  # GET /chanels/1/edit
  def edit
  end

  # POST /chanels or /chanels.json
  def create
    @chanel = Chanel.new(chanel_params)

    respond_to do |format|
      if @chanel.save
        format.html { redirect_to chanels_path, notice: "Chanel was successfully created." }
        format.json { render :show, status: :created, location: @chanel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chanels/1 or /chanels/1.json
  def update
    respond_to do |format|
      if @chanel.update(chanel_params)
        format.html { redirect_to chanels_path, notice: "Chanel was successfully updated." }
        format.json { render :show, status: :ok, location: @chanel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chanels/1 or /chanels/1.json
  def destroy
    @chanel.destroy

    respond_to do |format|
      format.html { redirect_to chanels_url, notice: "Chanel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chanel
      @chanel = Chanel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chanel_params
      params.require(:chanel).permit(:chanel)
    end
end
