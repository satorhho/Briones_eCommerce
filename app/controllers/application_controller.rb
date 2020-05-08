class ApplicationController < ActionController::Base
    helper_method :check_login
    helper_method :reject

    def check_login
        if session[:user_id].nil? then
            redirect_to "/", notice: "Login to access other pages."
        end
    end

    def reject
        redirect_to "/"
    end
end
