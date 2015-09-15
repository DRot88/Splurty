require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
    quote = Quote.create(:author => 'Daniel Rotenberg', :saying => 'You only yolo once.')
    expected = "DR#" + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

end
