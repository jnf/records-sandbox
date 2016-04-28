require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "artist can have albums" do
    assert_includes artists(:the_clash).albums, albums(:combat_rock)
  end

  test "display name for The Clash should be Clash, The" do
    assert_equal "Clash, The", artists(:the_clash).display_name
  end

  test "display name for Thelonious Monk should not be lonious Monk, The" do
    assert_equal artists(:tmonk).name, artists(:tmonk).display_name
  end

  test "display name for an artist with no name should be an empty string" do
    assert_equal "", Artist.new.display_name
  end

  test "display name for YY should be YY" do
    assert_equal artists(:yy).name, artists(:yy).display_name
  end
end
