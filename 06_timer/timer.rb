class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    num_string = ""
    remainder = @seconds

    current = @seconds / 3600
    remainder = remainder - current*3600

    if current >=1
      num_string += padded(current) + ":"
    else
      num_string += "00:"
    end

    current = remainder/60
    remainder = remainder - current*60

    if current >=1
      num_string += padded(current) + ":"
    else
      num_string += "00:"
    end

    if remainder >1
      num_string += padded(remainder)
    else
      num_string += "00"
    end

  end

  def padded(num)
    num=num.to_s
    num[1] ? num : "0"+num
  end
end
