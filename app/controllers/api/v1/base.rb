module API
  module V1
    class Base < Grape::API
      include API::V1::Defaults

      version 'v1'
      format :json
      formatter :json, Grape::Formatter::Roar

      use ::WineBouncer::OAuth2

      rescue_from :all do |error|
        API::V1.rescue_error(error)
      end

      mount API::V1::Users
    end

    def self.rescue_error(error)
      API::V1::Base.logger.error(error)

      eclass = error.class.to_s
      message = "OAuth error: #{error.to_s}" if eclass.match('WineBouncer::Errors')
      status = case
      when eclass.match('OAuthUnauthorizedError')
        401
      when eclass.match('OAuthForbiddenError')
        403
      when eclass.match('RecordNotFound'), error.message.match(/unable to find/i).present?
        404
      else
        (error.respond_to? :status) && error.status || 402
      end
      opts = { error: "#{message || error.message}" }

      Rack::Response.new(opts.to_json, status).finish
    end
  end
end
