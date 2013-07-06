class ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def new
    @showtime = Showtime.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  def create
    @showtime = Showtime.new(params[:showtime])

    respond_to do |format|
      if @showtime.save
        format.html { redirect_to @showtime, notice: 'Showtime was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  def show
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  def edit
    @showtime = Showtime.find(params[:id])
  end

  def update
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      if @showtime.update_attributes(params[:showtime])
        format.html { redirect_to @showtime, notice: 'Showtime was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  def destroy
    @showtime = Showtime.find(params[:id])
    @showtime.destroy

    respond_to do |format|
      format.html { redirect_to showtimes_url }
      format.js
    end
  end
end
