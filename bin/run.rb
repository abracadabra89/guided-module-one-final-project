require_relative '../config/environment'
require_relative '../lib/command_line.rb'
require 'pry'
# CommandLine.greet
# CommandLine.get_donor_input
#binding.pry
new_cli = CommandLine.new
new_cli.header
new_cli.greet

