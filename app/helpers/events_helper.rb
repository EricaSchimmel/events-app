module EventsHelper
    def time_range(start_datetime, end_datetime)
        if start_datetime.to_date == end_datetime.to_date
            "#{start_datetime.strftime('%A, %B %e, %Y %l:%M')} to #{end_datetime.strftime('%l:%M %Z')}"
        else
            "#{start_datetime.strftime('%A, %B %e, %Y %l:%M')} to #{end_datetime.strftime('%A, %B %e, %Y %l:%M %Z')}"
        end
    end
end
