class SeatsController < ApplicationController
  def index
    @showtime = Showtime.find(params[:showtime_id])

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
