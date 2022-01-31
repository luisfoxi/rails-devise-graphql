# frozen_string_literal: true

module Mutations
  module Users
    # Invites an user to your account.
    class InviteUserWithNewCompany < Mutations::BaseMutation
      description 'Invites an user with new company.'
      argument :attributes, Types::Users::UserInputType, required: true
      payload_type Types::Users::UserType

      def resolve(attributes:)
        # create a dummy user object to check ability against create
        user = ::User.new(attributes.to_h.merge(company_id: context[:current_user].company_id))
        current_ability.authorize! :create, user

        user = User.invite!(user.attributes, context[:current_user])

        company = ::Companies::Company.create!(name: "New Company")
        user.company_id = company.id
        user.role = :admin
        user.save

        raise ActiveRecord::RecordInvalid, user unless user.errors.empty?

        user
      end
    end
  end
end
