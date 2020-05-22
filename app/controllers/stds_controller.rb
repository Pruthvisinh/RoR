class StdsController < ApplicationController
  before_action :set_std, only: [:show, :edit, :update, :destroy]

  # GET /stds
  # GET /stds.json
  def index
    @stds = Std.all
  end

  # GET /stds/1
  # GET /stds/1.json
  def show
  end

  # GET /stds/new
  def new
    @std = Std.new
  end

  # GET /stds/1/edit
  def edit
  end

  # POST /stds
  # POST /stds.json
  def create
    @std = Std.new(std_params)

    respond_to do |format|
      if @std.save
        format.html { redirect_to @std, notice: 'Std was successfully created.' }
        format.json { render :show, status: :created, location: @std }
      else
        format.html { render :new }
        format.json { render json: @std.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stds/1
  # PATCH/PUT /stds/1.json
  def update
    respond_to do |format|
      if @std.update(std_params)
        format.html { redirect_to @std, notice: 'Std was successfully updated.' }
        format.json { render :show, status: :ok, location: @std }
      else
        format.html { render :edit }
        format.json { render json: @std.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stds/1
  # DELETE /stds/1.json
  def destroy
    @std.destroy
    respond_to do |format|
      format.html { redirect_to stds_url, notice: 'Std was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_std
      @std = Std.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def std_params
      params.require(:std).permit(:name, :class_teacher, :division)
    end
end
