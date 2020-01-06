def clock_angle(time)
    hour = time.split(':')[0].to_i
    minute = time.split(':')[1].to_i
    hour == 12 && hour = 0
    hour_hand = (hour * 30) + (minute * 0.5)
    minute_hand = minute * 6

    if minute_hand > hour_hand
        return minute_hand - hour_hand
    elsif hour_hand > 0 && minute_hand == 0
        if hour_hand < 180
            return hour_hand
        else
            return 360 - hour_hand
        end
    else
        return hour_hand - minute_hand
    end
end

