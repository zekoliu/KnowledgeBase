class Api::V1::SubjectController < ApplicationController

  def create
    name = params[:name]
    subject = Subject.new(name: name)
    if subject.save
      render_status_ok
    else
      @error = subject.errors
      render_bad_request
    end
  end

  def update
    id = params[:id]
    name = params[:name]
    subject = Subject.find(id)
    if subject.update(name: name)
      render_status_ok
    else
      @error = subject.errors
      render_bad_request
    end
  end

  def index
    @pageno = params[:pageno]
    @pagesize = params[:pagesize]
    subjects = Subject.all
    @total = subjects.size
    @subjects = subjects.page(@pageno).per(@pagesize)
  end
end
