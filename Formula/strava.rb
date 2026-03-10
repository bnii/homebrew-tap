class Strava < Formula
  desc "Babashka CLI for Strava API v3"
  homepage "https://github.com/bnii/bb-strava"
  url "https://github.com/bnii/bb-strava/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "c86f4b1b196036babf4099ba18b5c39830c1a39b2a831dd0c569a9497a1cdc81"
  license "ISC"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "strava"
    bash_completion.install "completions/strava.bash" => "strava"
  end

  def caveats
    <<~EOS
      For interactive completion of activity IDs, gear, clubs, segments,
      and routes, install fzf:
        brew install fzf
    EOS
  end

  test do
    assert_match "bb-strava", shell_output("#{bin}/strava --help")
  end
end
