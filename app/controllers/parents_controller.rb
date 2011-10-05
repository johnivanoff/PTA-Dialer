class ParentsController < ApplicationController

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.order('last_name')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parents }
    end
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
    @parent = Parent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parent }
    end
  end

end
