require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees
    
    def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save.to_i
        @title = title_to_save.to_s
        @attendees = attendees_to_save
    end
    
    def postpone_24h
        @start_date += (3600 * 24)
        return "Nouvelle date : " + @start_date.to_s
    end 

    def end_date
        return @start_date + (@duration * 60)
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_future?
        return !is_past?
    end

    def is_soon?
        return (Time.now - @start_date).abs < (30 * 60)
    end

    def to_s
        puts "> Titre : #{@title}"
        puts "> Date de début : #{@start_date}"
        puts "> Durée : #{@duration} minutes"
        puts "> Invités : #{@attendees}"
    end
end 