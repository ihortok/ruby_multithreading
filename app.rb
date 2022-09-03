# frozen_string_literal: true

require 'httparty'

start_at = Time.now

### Approach with single thread

# 20.times do
#   HTTParty.get('https://www.rubyguides.com/2015/07/ruby-threads/')
# end

### Approach with multiple threads

threads = []

20.times do
  threads << Thread.new { HTTParty.get('https://www.rubyguides.com/2015/07/ruby-threads/') }
end

threads.each(&:join)

end_at = Time.now

p "duration: #{end_at - start_at}"
