require 'sinatra'

1000.times do |i|
  get "/#{i}" do
    "Got #{i} route!"
  end
end
