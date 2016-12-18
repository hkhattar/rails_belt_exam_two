class GroupsController < ApplicationController
  def index  
  	@groups = Group.all
  	# @users = Group.find()users.count
  	render 'index'
  end

def delete
  	Group.find(params[:id]).destroy
  
  		redirect_to "/groups"
  
  end 

  
  def show
  	@group = Group.find(params[:id])
  	@users = Group.find(@group).users
  	@created_by = Group.find(@group).user
  	render 'show'
  end

  def create
  	@group = Group.create(name: params[:group][:name], description: params[:group][:description], user_id: params[:user_id])
  	@join = Join.create(user_id: session[:user_id],group_id: @group.id)
  	@user = User.where(id: params[:user_id])
  	flash[:errors] =  @group.errors.full_messages
  	
  	redirect_to '/groups'

  end

  private
  		def song_params
    		params.require(:song).permit(:title,:artist)
  		end
end
