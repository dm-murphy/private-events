class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
  end

  def show
    @invitation = Invitation.find(params[:id])
  end

  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    
    if @invitation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.destroy

    redirect_to root_path
  end

  def update
    @invitation = Invitation.find(params[:id])
    
    if @invitation.update(invitation_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @invitation = Invitation.find(params[:id])
  end

  private

    def invitation_params
      params.require(:invitation).permit(:event_id, :user_id, :acceptance)
    end
end
