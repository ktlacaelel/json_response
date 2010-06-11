class JsonResponse

  attr_reader :status

  def initialize
    @status = false
  end

  def serialize
    { :status => @status }.to_json
  end

  def to_js(callback)
    "#{callback}(#{serialize});"
  end

  def positive
    @status = true
  end

  def negative
    @status = false
  end

end
