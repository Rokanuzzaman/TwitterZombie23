class UserFollowsController < ApplicationController
  # GET /user_follows
  # GET /user_follows.xml
  def index
    @user_follows = UserFollow.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_follows }
    end
  end

  # GET /user_follows/1
  # GET /user_follows/1.xml
  def show
    @user_follow = UserFollow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_follow }
    end
  end

  # GET /user_follows/new
  # GET /user_follows/new.xml
  def new
    @user_follow = UserFollow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_follow }
    end
  end

  # GET /user_follows/1/edit
  def edit
    @user_follow = UserFollow.find(params[:id])
  end

  # POST /user_follows
  # POST /user_follows.xml
  def create
    @user_follow = UserFollow.new(params[:user_follow])

    respond_to do |format|
      if @user_follow.save
        format.html { redirect_to(@user_follow, :notice => 'User follow was successfully created.') }
        format.xml  { render :xml => @user_follow, :status => :created, :location => @user_follow }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_follow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_follows/1
  # PUT /user_follows/1.xml
  def update
    @user_follow = UserFollow.find(params[:id])

    respond_to do |format|
      if @user_follow.update_attributes(params[:user_follow])
        format.html { redirect_to(@user_follow, :notice => 'User follow was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_follow.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_follows/1
  # DELETE /user_follows/1.xml
  def destroy
    @user_follow = UserFollow.find(params[:id])
    @user_follow.destroy

    respond_to do |format|
      format.html { redirect_to(user_follows_url) }
      format.xml  { head :ok }
    end
  end
end
