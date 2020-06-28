class ApplicationController < ActionController::API

  def render_status_ok
    render 'api/v1/apimessage/ok'
  end

  def render_bad_request
    render 'api/v1/apimessage/bad'
  end
end
