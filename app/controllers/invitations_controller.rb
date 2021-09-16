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
    @invitation = current_user.invitations.build(invitation_params)

    # Use bang for debugging 
    if @invitation.save!
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

  private

    def invitation_params
      params.require(:invitation).permit(:event_id)
    end
end
