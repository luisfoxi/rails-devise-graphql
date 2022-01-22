# frozen_string_literal: true

module Resolvers
  module Users
    # Resolver to return a user
    class UserWithInvitationToken < Resolvers::BaseResolver
      type Types::Users::UserWithInvitationTokenType, null: true
      description 'Returns the user for a requested id with invitation token'

      argument :id, ID, required: true

      def resolve(id:)
        ::User.accessible_by(current_ability).find_by(id: id)
      end
    end
  end
end
