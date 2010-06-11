class JsonResponse

  attr_reader :status

  def initialize
    @status = false
    @data = {}
  end

  def serialize
    { :status => @status, :data => @data }.to_json
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

  def append(key, value)
    @data[key] = value
  end

end
