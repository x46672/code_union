module DashboardHelper
  def format_time(date_time)
    Time.parse(date_time).strftime("%e %B, %Y - %I:%m %p")
  end
end
