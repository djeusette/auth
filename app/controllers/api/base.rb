module API
  class Base < Grape::API
    mount API::V1::Base

    route :any, '*path' do
      Rack::Response.new({message: "Not found"}.to_json, 404).finish
    end
  end
end
