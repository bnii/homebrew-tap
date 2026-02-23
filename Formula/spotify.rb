class Spotify < Formula
  desc "Babashka CLI for Spotify Web API"
  homepage "https://github.com/bnii/bb-spotify"
  url "https://github.com/bnii/bb-spotify/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "58cfba4ecf1927950627672a44da7fce6c5ce79b54bfc2690137ea117d84b150"
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
