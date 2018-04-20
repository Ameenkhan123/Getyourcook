class CookCategoriesController < ApplicationController
  layout 'restaurant'
  before_action :set_cook_category, only: [:show, :edit, :update, :destroy]

  # GET /cook_categories
  # GET /cook_categories.json
  def index
    @cook_categories = CookCategory.all
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
  end

  # GET /cook_categories/1
  # GET /cook_categories/1.json
  def show
  end

  # GET /cook_categories/new
  def new
    @cook_category = CookCategory.new
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
  end

  # GET /cook_categories/1/edit
  def edit
  end

  # POST /cook_categories
  # POST /cook_categories.json
  def create
    @cook_category = CookCategory.new(cook_category_params)

    respond_to do |format|
      if @cook_category.save
        format.html { redirect_to @cook_category, notice: 'Cook category was successfully created.' }
        format.json { render :show, status: :created, location: @cook_category }
      else
        format.html { render :new }
        format.json { render json: @cook_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cook_categories/1
  # PATCH/PUT /cook_categories/1.json
  def update
    respond_to do |format|
      if @cook_category.update(cook_category_params)
        format.html { redirect_to @cook_category, notice: 'Cook category was successfully updated.' }
        format.json { render :show, status: :ok, location: @cook_category }
      else
        format.html { render :edit }
        format.json { render json: @cook_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cook_categories/1
  # DELETE /cook_categories/1.json
  def destroy
    @cook_category.destroy
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
    respond_to do |format|
      format.html { redirect_to cook_categories_url, notice: 'Cook category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cook_category
      @cook_category = CookCategory.find(params[:id])
      @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cook_category_params
      params.require(:cook_category).permit(:name, :description)
    end
  end
