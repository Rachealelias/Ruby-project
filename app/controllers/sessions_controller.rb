class SessionsController < ApplicationController

    #POST: /sessions
     post "/login" do
            user = User.find_by_username(params[:username])
            if user && user.authenticate(params[:password])
              
                session[:user_id] = user.id
                

                halt 200, {user: user, message:"User successfully logged in"}.to_json
            else
                halt 404, {error: "Invalid information"}.to_json
            end
        end

        delete "/logout" do
            session.delete("user_id")
        end
    end