require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)

require 'app/board_cell'
require 'app/board'
require 'app/game'
require 'app/player'
require 'app/view'

g = Game.new
g.display_board
g.play