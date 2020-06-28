class Api::V1::TopicController < ApplicationController

  def create
    topic = Topic.new(topic_params)
    if topic.save
      render_status_ok
    else
      @error = topic.errors
      render_bad_request
    end
  end

  def index
    @pageno = params[:pageno]
    @pagesize = params[:pagesize]
    subject_id = params[:subject_id]
    topics = Topic.all
    topics = topics.where(subject_id: subject_id) if subject_id.present?
    @total = topics.size
    @topics = topics.page(@pageno).per(@pagesize)
  end

  def update
    id = params[:id]
    t = Topic.find(id)
    if t.update(topic_params)
      render_status_ok
    else
      @error = topic.errors
      render_bad_request
    end
  end

  def show
    id = params[:id]
    @top = Topic.find(id)
  end

  def destroy
    id = params[:id]
    t = Topic.find(id)
    if t.updated_at(deleted_at: Time.now)
      render_status_ok
    else
      @error = t.errors
      render_bad_request
    end
  end

  def review
    id = params[:id]
    t = Topic.find(id)
    if t.updated_at(status: status)
      render_status_ok
    else
      @error = t.errors
      render_bad_request
    end
  end

  private

  def topic_params
    params.permit(:title, :answer, :options, :parsing, :subject_id)
  end
end
