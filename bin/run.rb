require_relative '../config/environment'
require_relative '../lib/command_line.rb'
require 'pry'
# CommandLine.greet
# CommandLine.get_donor_input

new_cli = CommandLine.new
new_cli.greet
