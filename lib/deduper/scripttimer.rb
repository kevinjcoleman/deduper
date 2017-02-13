class ScriptTimer
  def initialize(count, type, alert)
      @count = count
      @time_counter = Time.now
      @average_time_per = nil
      @total_rows = count
      @total_time = 0
      @type = type
      @alert = alert.to_i
  end

  def row
      @count -=1
      @total_time = (@total_time + (Time.now - @time_counter))
      @average_time_per = (@total_time / ( @total_rows - @count ))
      @time_remaining = (@average_time_per * @count) if @average_time_per
      p "#@count #{@type} remaining, estimated time remaining is #{estimated_time}" if @count % @alert == 0
      @time_counter = Time.now
  end

  private
    def estimated_time
      actual_time = (@time_remaining / 60)
      if actual_time >= 60
        return "#{(actual_time/60).round(1)} hours."
      elsif actual_time >= 2
        return "#{actual_time.round(1)} minutes."
      elsif actual_time >= 1
        return "#{actual_time.round(1)} minute."
      else
        seconds_remaining = actual_time * 60
        return "#{seconds_remaining.round(2)} seconds."
      end
    end
end
