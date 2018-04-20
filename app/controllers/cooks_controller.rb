class CooksController < ApplicationController
 layout 'restaurant'
 before_action :set_cook, only: [:show, :edit, :update, :destroy]

  # GET /cooks
  # GET /cooks.json
  def index
    #@cooks = Cook.all
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
  end

  # GET /cooks/1
  # GET /cooks/1.json
  def show
  end

  # GET /cooks/new
  def new
    @cook = Cook.new
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
  end

  # GET /cooks/1/edit
  def edit
  end

  # POST /cooks
  # POST /cooks.json
  def create
    @cook = Cook.new(cook_params)
    respond_to do |format|
      if @cook.save
        format.html { redirect_to @cook, notice: 'Cook was successfully created.' }
        format.json { render :show, status: :created, location: @cook }
      else
        format.html { render :new }
        format.json { render json: @cook.errors, status: :unprocessable_entity }
      end
    end
  end
  def new_review
    @review = Review.new
  end
  def create_review
    @user = current_user
    @review = @user.reviews.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render 'new_review'
    end
  end
  # PATCH/PUT /cooks/1
  # PATCH/PUT /cooks/1.json
  def update
    respond_to do |format|
      if @cook.update(cook_params)
        format.html { redirect_to @cook, notice: 'Cook was successfully updated.' }
        format.json { render :show, status: :ok, location: @cook }
      else
        format.html { render :edit }
        format.json { render json: @cook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cooks/1
  # DELETE /cooks/1.json
  def destroy
    @cook.destroy
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
    respond_to do |format|
      format.html { redirect_to cooks_url, notice: 'Cook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cook
      @cook = Cook.find(params[:id])
      @q = Cook.ransack(params[:q])
      @cooks = @q.result(distinct: true)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cook_params
      params.require(:cook).permit(:name, :review, :contact, :address, :city, :state, :country, :zipcode, :photo, :latitude, :longitude, :cook_category_id)
    end
    def review_params
      params.require(:review).permit(:name, :email,:message, :user_id, :cook_id)
    end
  end
