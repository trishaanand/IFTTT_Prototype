class TupleFakesController < ApplicationController
  before_action :set_tuple_fake, only: [:show, :edit, :update, :destroy]

  # GET /tuple_fakes
  # GET /tuple_fakes.json
  def index
    @tuple_fakes = TupleFake.all
  end

  # GET /tuple_fakes/1
  # GET /tuple_fakes/1.json
  def show
  end

  # GET /tuple_fakes/new
  def new
    @tuple_fake = TupleFake.new
  end

  # GET /tuple_fakes/1/edit
  def edit
  end

  # POST /tuple_fakes
  # POST /tuple_fakes.json
  def create
    @tuple_fake = TupleFake.new(tuple_fake_params)

    respond_to do |format|
      if @tuple_fake.save
        format.html { redirect_to @tuple_fake, notice: 'Tuple fake was successfully created.' }
        format.json { render :show, status: :created, location: @tuple_fake }
      else
        format.html { render :new }
        format.json { render json: @tuple_fake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuple_fakes/1
  # PATCH/PUT /tuple_fakes/1.json
  def update
    respond_to do |format|
      if @tuple_fake.update(tuple_fake_params)
        format.html { redirect_to @tuple_fake, notice: 'Tuple fake was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuple_fake }
      else
        format.html { render :edit }
        format.json { render json: @tuple_fake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuple_fakes/1
  # DELETE /tuple_fakes/1.json
  def destroy
    @tuple_fake.destroy
    respond_to do |format|
      format.html { redirect_to tuple_fakes_url, notice: 'Tuple fake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuple_fake
      @tuple_fake = TupleFake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuple_fake_params
      params.require(:tuple_fake).permit(:channel_id, :trigger_id, :action_id, :triggerValue, :triggerCondition, :actionFields_id, :actionData)
    end
end
