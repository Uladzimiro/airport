
%w(plane_types planes).each do |seed|
  puts "Creating #{seed}..."
  require_relative "seeds/#{seed}"
end
