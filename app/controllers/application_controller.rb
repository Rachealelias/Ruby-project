require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    #set :views, 'app/views'
    set :default_content_type, :json
  end

  error ActiveRecord::RecordNotFound do
    {errors: "Record not found with id #{params['id']}"}.to_json
  end

  private
  def shared_helper_method
    puts"I am visible in every controller!"
  end

end
