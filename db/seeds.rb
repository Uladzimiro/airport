
%w(plane_types).each do |seed|
  puts "Creating #{seed}..."
  require_relative "seeds/#{seed}"
end
