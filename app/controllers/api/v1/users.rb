module API
  module V1
    class Users < Grape::API
      resource :users do
        desc "Return all users, requires authentication"
        oauth2
        get '/' do
          User.all
        end

        desc 'Create user given email, password and password confirmation'
        params do
          requires :email, type: String
          requires :first_name, type: String
          requires :last_name, type: String
          requires :company, type: String
          requires :phone_number, type: String
          requires :country, type: String
          requires :password, type: String
          requires :password_confirmation, type: String
        end
        post '/' do
          authorized_params = declared(params)
          if authorized_params[:password] == authorized_params[:password_confirmation]
            User.create!(authorized_params)
          else
            error!('password_confirmation_no_match', 400)
          end
        end

        desc 'Update user, requires authentication'
        oauth2
        params do
          requires :id, type: Integer
          optional :email, type: String
          optional :password, type: String
          optional :password_confirmation, type: String
        end
        put '/:id' do
          authorized_params = declared(params, include_missing: false)

          if authorized_params[:id] != current_user.id
            return error!('Unauthorized', 401)
          end

          if authorized_params[:password] && authorized_params[:password] != authorized_params[:password_confirmation]
            error!('password_confirmation_no_match', 400)
          else
            user = User.find(authorized_params[:id])
            user.update_attributes!(authorized_params)
          end
        end
      end

      desc 'Return current user, requires authentication'
      oauth2
      get 'me' do
        resource_owner
      end

      desc 'Logout user'
      oauth2
      delete 'logout' do
        warden.logout
      end
    end
  end
end
