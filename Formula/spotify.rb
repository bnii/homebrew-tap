class Spotify < Formula
  desc "Babashka CLI for Spotify Web API"
  homepage "https://github.com/bnii/bb-spotify"
  url "https://github.com/bnii/bb-spotify/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "ISC"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "spotify"
    bash_completion.install "completions/spotify.bash" => "spotify"
  end

  test do
    assert_match "bb-spotify", shell_output("#{bin}/spotify --help")
  end
end
