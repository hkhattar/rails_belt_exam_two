class JoinsController < ApplicationController
  def create
  	  @join = Join.create(user_id: session[:user_id],group_id: params[:group_id])
  	  puts'counts*************'
  	  puts params[:song_id]
	  puts params[:user_id]
	  puts session[:user_id]
	  puts '!!!!!!!'
  	  redirect_to "/groups/" + params[:group_id].to_s
  end
  def delete
  	Join.where(group: Group.find(params[:group_id]), user: current_user).destroy_all
  	redirect_to '/groups/' + params[:group_id].to_s
  end
end
