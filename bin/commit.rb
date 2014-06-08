#!/usr/bin/env ruby
require './lib/runner'

word = ARGV[0].nil? ? "Commit!!!" : ARGV[0]

$runner = Runner.new(word)
$runner.run()
