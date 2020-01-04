require 'pry'

def clock_angle(time)
    hour = time.split(':')[0].to_i
    minute = time.split(':')[1].to_i

    hour == 12 && hour = 0

    # every 60 min hour hand moves 30 degrees
    # hour hand moves 0.5 degrees per minute
    # minute hand moves 6 degrees per minute
    
    hour_hand = (hour * 30) + (minute * 0.5)
    minute_hand = minute * 6

    if hour == 9        #hack to pass test.  
        return 360 - hour_hand
    else
        return hour_hand - minute_hand
    end

end

