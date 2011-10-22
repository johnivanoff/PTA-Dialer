class ParentsController < ApplicationController
  before_filter :require_login

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

  # GET /parents/new
  # GET /parents/new.json
  def new
    @parent = Parent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parent }
    end
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = Parent.new(params[:parent])

    respond_to do |format|
      if @parent.save
        format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        format.json { render json: @parent, status: :created, location: @parent }
      else
        format.html { render action: "new" }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end


end
