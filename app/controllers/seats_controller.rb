class SeatsController < ApplicationController

  skip_before_filter :require_authentication
  skip_before_filter :require_admin_authentication, :except => [:new, :create, :edit, :update, :destroy]

  def index
    if !session[:user_id].nil?
      @user = User.find(session[:user_id])
    else
      @user = User.new
    end

    @showtime = Showtime.find(params[:showtime_id])

    @showtime_seats_array = @showtime.seats.sort{
      |a,b| (a.row == b.row) ? a.chair_letter <=> b.chair_letter : a.row <=> b.row
    }

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def new
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  def create
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.new(params[:seat])

    respond_to do |format|
      if @seat.save
        format.html { redirect_to [@showtime, @seat], notice: 'Seat was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  def show
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  def save
    @seat = Seat.find(params[:id])
    @showtime = Showtime.find(params[:showtime_id])

    if @seat.user_id.nil? #to make sure you can't "grab" someones already reserved ticket by going to the /save url
      if !session[:user_id].blank?  #if the session has started i.e. the customer is logged in
        respond_to do |format|
          @user = User.find(session[:user_id])  #grab the user object
          @seat.update_attributes(:user_id => @user.id) #add user id to seat object
          format.html { redirect_to showtime_seats_path, :notice => "Nice! You have reserved this seat." }
          format.js #save.js.erb
        end
      else
        respond_to do |format|
          @user = User.new
          @seat = Seat.find(params[:id]) #if not logged in, grab the seat object to be used after the login..
          format.html { render new_session_path, :notice => "Please log in to reserve this seat." }
          format.js #save.js.erb
        end
      end
    else
      redirect_to root_path, :notice => "That seat is already reserved."
    end
  end

  def edit
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.find(params[:id])
  end

  def update
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.find(params[:id])

    respond_to do |format|
      if @seat.update_attributes(params[:seat])
        format.html { redirect_to [@showtime, @seat], notice: 'Seat was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  def give_up_seat
    @user = User.find(session[:user_id])
    @seat = Seat.find(params[:id])

    respond_to do |format|
      if @seat.update_attributes(:user_id => "")
        format.html { redirect_to @user, notice: 'Seat was successfully given up.' }
        format.js
      else
        format.html { render action: "show" }
        format.js
      end
    end
  end

  def destroy
    @showtime = Showtime.find(params[:showtime_id])
    @seat = Seat.find(params[:id])
    @seat.destroy

    respond_to do |format|
      format.html { redirect_to showtime_seats_url(@showtime) }
      format.js
    end
  end
end
