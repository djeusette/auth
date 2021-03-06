module Api

  ###
  # Api under test, default doorkeeper scope is 'account'
  ##
  class MountedProtectedApiUnderTest < Grape::API
    desc 'Protected method with public', auth: { scopes: ['public'] }
    get '/protected' do
      { hello: 'world' }
    end

    desc 'Protected method with private', auth: { scopes: ['private'] }
    get '/protected_with_private_scope' do
      { hello: 'scoped world' }
    end

    desc 'Unprotected method'
    get '/unprotected', auth: false do
      { hello: 'unprotected world' }
    end

    desc 'Protected method with public that returns the user name', auth: { scopes: ['public'] }
    get '/protected_user' do
      { hello: resource_owner.name }
    end

    desc 'This method uses Doorkeepers default scopes'
    get '/protected_without_scope' do
      { hello: 'protected unscoped world' }
    end

    desc 'oauth2_dsl'
    oauth2 'public'
    get '/oauth2_dsl' do
      { hello: 'oauth2_dsl' }
    end

    oauth2 'custom_scope'
    get '/oauth2_dsl_custom_scope' do
      { hello: 'custom scope' }
    end

    oauth2
    get '/oauth2_protected_with_default_scopes' do
      { hello: 'default oauth2 dsl' }
    end

    oauth2 false
    get '/unprotected_endpoint' do
      { hello: 'public oauth2 dsl' }
    end

    get '/not_described_world' do
      { hello: 'non described world' }
    end
  end

  class ProtectedApiUnderTest < Grape::API
    default_format :json
    format :json
    use ::WineBouncer::OAuth2
    mount MountedProtectedApiUnderTest
  end
end
