# frozen_string_literal: true

module Auth
  # Custom passwords controller
  class InvitationsController < Devise::InvitationsController
    # GET /resource/invitation/accept?invitation_token=abcdef
    # redirect user to front end to finish invitation
    def edit
      # @user.save!

      # params[:invitation_token] = @user.invitation_token

      # redirect_to "http://localhost:3000/users/invitation?invitation_token=#{params[:invitation_token]}"
      # redirect_to "http://localhost:3000/users/invitation/accept?invitation_token=#{params[:invitation_token]}"
      # redirect_to "http://#{ENV['CLIENT_URL']}/users/invitation/accept?invitation_token=#{params[:invitation_token]}"
    end
  end
end
