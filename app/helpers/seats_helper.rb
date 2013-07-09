module SeatsHelper
  def make_seat(seat)
    link_class = "seat "
    link_class << "reserved " unless seat.user_id.nil?
    link_class << "active" if seat.user_id == @user.id
    link_id = "seat#{seat.id}"
    link_text = image_tag "/assets/chair.jpeg"
    link_text << "#{seat.row}-#{seat.chair_letter}"
    link_text << "<br>Buy!".html_safe if seat.user_id.nil?
    link_text << "<br>All Yours!".html_safe if !seat.user_id.nil? && seat.user_id == @user.id
    link_text << "<br>Reserved - Info".html_safe if !seat.user_id.nil? &&  seat.user_id != @user.id
    link_remote = false;
    if !seat.user_id.nil?
      link_url = [@showtime, seat]
    else
      link_url = save_seat_path(@showtime, seat)
      link_remote = true if current_user != nil
    end
    @foo = render :partial => 'seat', :locals => {
      :link_text => link_text,
      :link_url => link_url,
      :link_class => link_class,
      :link_id => link_id,
      :link_remote => link_remote
    }
  end
end
