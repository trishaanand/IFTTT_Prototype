class MainController < ApplicationController
  # before_action :set_tuple, only: [:show, :edit, :update, :destroy]

  # GET /tuples
  # GET /tuples.json
  def create
    @tuple = Tuple.new
  end
  def index
    puts "iuhyiuhiuhkijuhkj"
    @tuples = Tuple.all
    @newTuples = Array.new
    @tuples.each do |f|
      @channel = Channel.find(f.channel_id)
      puts @channel
    end
  end

  # GET /tuples/1
  # GET /tuples/1.json
  def show
  	puts "HOLAAAAA!"
  end

  # GET /tuples/new
  def new
    @tuple = Tuple.new
  end

  # GET /tuples/1/edit
  def edit
  	puts "EDITTTTTTT"
  end

  # POST /tuples
  # POST /tuples.json
  def create1
    puts "*************************************In create1"
    puts tuple_params
    @tuple = Tuple.new(tuple_params)

    respond_to do |format|
      if @tuple.save
        format.html { redirect_to @tuple, notice: 'Tuple was successfully created.' }
        format.json { render :show, status: :created, location: @tuple }
      else
        format.html { render :new }
        format.json { render json: @tuple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuples/1
  # PATCH/PUT /tuples/1.json
  def update
    respond_to do |format|
      if @tuple.update(tuple_params)
        format.html { redirect_to @tuple, notice: 'Tuple was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuple }
      else
        format.html { render :edit }
        format.json { render json: @tuple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuples/1
  # DELETE /tuples/1.json
  def destroy
    @tuple.destroy
    respond_to do |format|
      format.html { redirect_to tuples_url, notice: 'Tuple was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuple
      @tuple = Tuple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuple_params
      params.require(:main).permit(:channel_id, :trigger_id, :action_id, :triggerValue, :triggerCondition, :actionFieldID, :actionData)
    end
end

