module Users
    class UsersController < BaseController
  
      def index
      end

      def new
        @user = current_user.users.new
      end
  
      def create
        @user = current_user.users.create(user_params)
        
        if @user.save
            redirect_to welcome_index_path
          else
            render :new
          end
        end
      
  
      private
  
      def user_params
        params.require(:user). permit(:email, :password, :creator_user_id)
      end 
    end
  end