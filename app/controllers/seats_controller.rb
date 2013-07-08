class SeatsController < ApplicationController

  skip_before_filter :require_authentication
  skip_before_filter :require_admin_authentication

  def index
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

    if !session[:user_id].blank?  #if the session has started i.e. the customer is logged in
      @user = User.find(session[:user_id])  #grab the user object
      @seat.update_attributes(:user_id => @user.id) #add user id to seat object
      redirect_to [@showtime, @seat], :notice => "Nice! You have reserved this seat."
    else
      @user = User.new
      @seat = Seat.find(params[:id]) #if not logged in, grab the seat object to be used after the login..
      render new_session_path
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
