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

    if @invitation.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def invitation_params
      params.permit(:event_id, :user_id)
    end
end
