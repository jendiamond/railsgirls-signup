class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :update, :destroy]

  # GET /tutorials
  def index
    @tutorials = Tutorial.all
  end

  def user_tutorials
    @user = User.find(params[:user_id])
    @tutorial = @user.tutorial
  end

  # GET /tutorials/1
  def show
    @user = User.find(params[:user_id])
    @tutorial = @user.tutorial
  end

  # GET /tutorials/new
  def new
    @tutorial = Tutorial.new
  end

  # GET /tutorials/1/edit
  def edit
  end

  # POST /tutorials
  def create
    @user = User.find(params[:user_id])
    @tutorial = @user.tutorial.new(tutorial_params)
    # @tutorial = Tutorial.new(tutorial_params)

    if @tutorial.save
      redirect_to @tutorial, notice: 'Tutorial was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tutorials/1
  def update
    if params[:tutorial]
      if @tutorial.update(tutorial_params)
        redirect_to user_tutorial_path(@user, @tutorial), notice: 'Tutorial was successfully updated.'  and return
      else
        render :edit
      end
    end
    redirect_to :back and return
  end

  # DELETE /tutorials/1
  def destroy
    @tutorial.destroy
    redirect_to tutorials_url, notice: 'Tutorial was successfully destroyed.'
  end

  private

    def set_tutorial
      @user = User.find(params[:user_id])
      @tutorial = @user.tutorial
    end

    def tutorial_params
      params.require(:tutorial).permit(:tryruby_image, :trygit_image,
        :terminal_image, :htmlcss_image, :image, :user_id)
    end
end
