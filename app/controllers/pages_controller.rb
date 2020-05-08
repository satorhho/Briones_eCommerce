class PagesController < ApplicationController
    def show_login
    end

    def create_login

        user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password]) then
            session[:user_id] = user.id

            redirect_to "/users/" + session[:user_id].to_s, notice: "Login successful!"
        else
            redirect_to "/", notice: "No record found!"
        end
    end

    def logout
        session[:user_id] = nil

        redirect_to "/"
    end
end
