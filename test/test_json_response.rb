require 'helper'

class TestJsonResponse < Test::Unit::TestCase

  context 'JsonResponse' do

    setup do
      @jr = JsonResponse.new
    end

    should 'generate a json string with appropriate data' do
      @jr.append('key', 'value')
      assert_equal @jr.to_js('test'), 'test({"data":{"key":"value"},"status":false});'
    end

  end

end
