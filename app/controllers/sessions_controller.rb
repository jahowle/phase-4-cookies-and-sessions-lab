class SessionsController < ApplicationController

    def index
        session[:page_views] ||= 0
        session[:page_views] += 1
        cookies[:cookies_hello] ||= "World"
        render json: { session: session, cookies: cookies.to_hash }
    end


end
