class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    @tutorials = Tutorial.all
  end

  # GET /users/1
  def show
    @question = Question.find_by user_id:(@user.id)
    @tutorial = Tutorial.find_by user_id:(@user.id)
  end

  # GET /users/new
  def new
    @user = User.new
    @question = @user.build_question
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      @user.create_tutorial
      redirect_to user_tutorial_path(@user,@user.tutorial), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

 # GET /users/accepted
  def accepted
    @users = User.all
    @tutorials = Tutorial.all
  end

 # GET /users/pending
  def pending
    @users = User.all
    @tutorials = Tutorial.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      @tutorial = Tutorial.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone,
        :zip_code, :twitter_handle, :github_user_name, :over_21, :age,
        :operating_system, :workshop, :rating, :coach, :pair, :accepted,
        :attended, :phase_five_coach, :cancellation, :status,
          :question_attributes => [:newbie,:html_css,:tutorials,:study_group,
            :program,:website,:work,:bootcamp,:compsci,:rlsgrl_rlsbrg,
            :continue,:support,:experience]
          :tutorial_attributes => [:try_ruby:terminal,:try_git,:html_css,
            :user_id,:created_at,:updated_at,
            :image_file_name,:image_updated_at,
            :tryruby_image_file_name,:tryruby_image_updated_at,
            :terminal_image_file_name,:terminal_image_updated_at,
            :trygit_image_file_name,:trygit_image_updated_at,
            :htmlcss_image_file_name,:htmlcss_image_updated_at])
    end
end
