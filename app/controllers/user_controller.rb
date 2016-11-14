class UsersController < ApplicationController
 def new
   @user = User.new
 end

 def create
   @user = User.new(user_params)
   if @user.save
     redirect_to restaurant_index_url, notice: "You have successfully signed up for a SeatYourself account!"
   else
     render "new"
   end
 end

 def edit
   @user = User.find(params[:id])
 end

 def update
   @user = User.find(params[:id])

     if @user.update_attributes(user_params)
       redirect_to "/users/#{@user.id}"
     else
       render "edit"
     end
 end

 private
 def user_params
   params.require(:user).permit(:email, :password, :password_confirmation, :username)
 end
end
