require 'test_helper'

class ChessTest < Test::Unit::TestCase
  FENS = [
    '8/k7/8/7B/6b1/7B/6b1/4K3 w - - 0 1',
    '8/2k5/8/1B6/4b3/8/2K5/5B2 w - - 0 1',
    '8/2k5/8/3b4/B7/8/2K5/8 w - - 0 1',
    '8/2k5/8/8/4B3/8/2K5/8 w - - 0 1',
    '8/2k5/8/5b2/8/8/2K5/8 w - - 0 1'
  ]

  FENS.each_with_index do |fen, i|
    define_method("test_insufficient_material_#{i}") do
      g = Chess::Game.load_fen(fen)
      assert(g.board.insufficient_material?)
    end
  end

end