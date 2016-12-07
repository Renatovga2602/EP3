class AdminViewsController < ApplicationController
  before_action :set_admin_view, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
     @users = User.all
  end

  # GET /admin_views/new
  def new
    @admin_view = AdminView.new
  end

  # GET /admin_views/1/edit
  def edit
  end

  # POST /admin_views
  # POST /admin_views.json
  def create
    @admin_view = AdminView.new(admin_view_params)

    respond_to do |format|
      if @admin_view.save
        format.html { redirect_to @admin_view, notice: 'Admin view was successfully created.' }
        format.json { render :show, status: :created, location: @admin_view }
      else
        format.html { render :new }
        format.json { render json: @admin_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_views/1
  # PATCH/PUT /admin_views/1.json
  def update
    respond_to do |format|
      if @admin_view.update(admin_view_params)
        format.html { redirect_to @admin_view, notice: 'Admin view was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_view }
      else
        format.html { render :edit }
        format.json { render json: @admin_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_views/1
  # DELETE /admin_views/1.json
  def destroy
    @admin_view.destroy
    respond_to do |format|
      format.html { redirect_to admin_views_url, notice: 'Admin view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_view
      @admin_view = AdminView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_view_params
      params.fetch(:admin_view, {})
    end
end
