class MembersController < ApplicationController
  def generate_new_password_email 
    member = member.find(params[:member_id]) 
    member.send_reset_password_instructions flash[:notice] = "Reset password instructions have been sent to #{member.email}." 
    redirect_to admin_member_path(member) 
  end

    before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  def index
    @members = member.all
    @tutorials = Tutorial.all
  end

  # GET /members/1
  def show
    @question = Question.find_by member_id:(@member.id)
    @tutorial = Tutorial.find_by member_id:(@member.id)
  end

  # GET /members/new
  def new
    @member = member.new
    @question = @member.build_question
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  def create
    @member = member.new(member_params)
    if @member.save
      @member.create_tutorial
      redirect_to member_tutorial_path(@member,@member.tutorial), notice: 'member was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /members/1
  def update
    if @member.update(member_params)
      redirect_to @member, notice: 'member was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    redirect_to members_url, notice: 'member was successfully destroyed.'
  end

 # GET /members/accepted
  def accepted
    @members = member.all
    @tutorials = Tutorial.all
  end

 # GET /members/pending
  def pending
    @members = member.all
    @tutorials = Tutorial.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = member.find(params[:id])
      @tutorial = Tutorial.find(params[:member_id])
    end

  def member_params
    params.require(:member).permit(:username,:email,:encrypted_password,:reset_password_token,:reset_password_sent_at,:remember_created_at,:sign_in_count,:current_sign_in_at,:last_sign_in_at,:current_sign_in_ip,:last_sign_in_ip,:confirmation_token,:confirmed_at,:confirmation_sent_at,:unconfirmed_email,:created_at,:updated_at,:admin)
  end
end
