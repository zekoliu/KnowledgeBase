class Api::V1::UserController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render_status_ok
    else
      @error = user.errors
      render_bad_request
    end
  end

  def u_info
    id = params[:openid]
    user = User.find_by(openid: id)
    if user.update(user_params)
      render_status_ok
    else
      @error = user.errors
      render_bad_request
    end
  end

  def detail
    openid = params[:openid]
    @user = User.find_by(openid: openid)
    if @user.nil?
      @user = User.create(openid: openid)
    end
    @moment_count = @user.moments.size
    @course_count = @user.courses.size
  end

  private

  def user_params
    params.permit(:phone, :name, :openid, :avatar, :wx_avatar_url)
  end
end
