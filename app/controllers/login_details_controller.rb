class LoginDetailsController < ApplicationController
  before_action :set_login_detail, only: [:show, :edit, :update, :destroy]

  # GET /login_details
  # GET /login_details.json
  def index
    @login_details = LoginDetail.all
  end

  # GET /login_details/1
  # GET /login_details/1.json
  def show
  end

  # GET /login_details/new
  def new
    @login_detail = LoginDetail.new
  end

  # GET /login_details/1/edit
  def edit
  end

  # POST /login_details
  # POST /login_details.json
  def create
    @login_detail = LoginDetail.new(login_detail_params)

    respond_to do |format|
      if @login_detail.save
        format.html { redirect_to @login_detail, notice: 'Login detail was successfully created.' }
        format.json { render :show, status: :created, location: @login_detail }
      else
        format.html { render :new }
        format.json { render json: @login_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_details/1
  # PATCH/PUT /login_details/1.json
  def update
    respond_to do |format|
      if @login_detail.update(login_detail_params)
        format.html { redirect_to @login_detail, notice: 'Login detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_detail }
      else
        format.html { render :edit }
        format.json { render json: @login_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_details/1
  # DELETE /login_details/1.json
  def destroy
    @login_detail.destroy
    respond_to do |format|
      format.html { redirect_to login_details_url, notice: 'Login detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_detail
      @login_detail = LoginDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_detail_params
      params.require(:login_detail).permit(:user_name, :password, :person_id)
    end
end
