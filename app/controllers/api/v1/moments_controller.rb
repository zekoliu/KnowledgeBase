class Api::V1::MomentsController < ApplicationController

  def create
    moment = Moment.new(moment_params)
    if moment.save
      render_status_ok
    else
      @error = moment.errors
      render_bad_request
    end
  end

  def index
    @pageno = params[:pageno]
    @pagesize = params[:pagesize]
    type = params[:type]
    moments = Moment.all.order(created_at: :desc)
    if type == 'my'
      user_id = parmas[:id]
      moments = moments.where(user_id: user_id)
    end
    @total = moments.size
    @moments = moments.page(@pageno).per(@pagesize)
  end

  private

  def moment_params
    params.permit(:user_id, :content, pics: [])
  end
end
