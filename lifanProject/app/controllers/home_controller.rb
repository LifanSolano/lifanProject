require 'user'
class HomeController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(:id => 3, :name => params[:name], :created_at => params[:created_at], :updated_at => params[:updated_at])
   
    respond_to do |format|
      if @user.save
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
        # format.js
        # format.json { render json: @user, status: :created, location: @user }
        return format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def delete
  end

  private
  def user_params
    # params[:name, :created_at, :updated_at]
    # params.require(:user).permit(params[:name], params[:created_at], params[:updated_at])
  end
end
