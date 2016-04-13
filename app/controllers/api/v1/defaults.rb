module API
  module V1
    module Defaults
      extend ActiveSupport::Concern
      included do
        helpers do
          def current_token
            doorkeeper_access_token
          end

          def current_user
            resource_owner
          end

          def current_scopes
            current_token.scopes
          end
        end
      end
    end
  end
end
