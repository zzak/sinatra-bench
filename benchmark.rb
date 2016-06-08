require './app.rb'
require 'rack/test'
require 'benchmark/ips'

class MyBenchmark
#class MyBenchmark < Minitest::Benchmark
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def bench
    Benchmark.ips do |x|
      x.report("get") { get('/875') }

      x.compare!
    end
  end
end

MyBenchmark.new.bench
