namespace :api do
  desc "API Routes"
  task :routes => :environment do
    API::Base.routes.each do |api|
      next unless api.request_method
      method = api.request_method.ljust(10)
      path = api.path.gsub(":version", api.version || '*')
      puts "     #{method} #{path}"
    end
  end
end
