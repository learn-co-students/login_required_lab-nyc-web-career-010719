class SessionsController < ActionController::Base

      def new

      end

      def create
        # byebug
        if self.current_user == nil || self.current_user.empty?
          redirect_to '/'
        else
          render :homepage
        end
      end

      def destroy
        session.delete :name
        redirect_to '/'
      end


      def current_user
        session[:name] = params[:name]
        session[:name]
      end



end
