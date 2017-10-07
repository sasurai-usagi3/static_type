class IntVariable
  def do
    ret = yield

    if ret.class <= Integer
      @value = ret
    else
      raise
    end
  end

  def to_i
    @value
  end

  def +(n)
    @value + n
  end

  def -(n)
    @value - n
  end

  def *(n)
    @value * n
  end

  def /(n)
    @value / n
  end

  def %(n)
    @value % n
  end
end
