.PHONY: test default run reset

default: test

test:
	ruby -e 'require "codeclimate-test-reporter"; CodeClimate::TestReporter.start; ARGV.each {|file| require file}' ./test/*.rb

run: reset
	ruby bin/commit.rb ${ARGS}

reset:
	bash bin/reset.sh
