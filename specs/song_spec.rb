require('minitest/autorun')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Just", "Bicep")
    @song2 = Song.new("Its only real", "Denis Sulta")
  end

  def test_song_has_title
    assert_equal("Just", @song1.title)
    assert_equal("Its only real", @song2.title)
  end

  def test_song_has_artist
      assert_equal("Bicep", @song1.artist)
      assert_equal("Denis Sulta", @song2.artist)
  end

end