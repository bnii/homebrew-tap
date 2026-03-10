class Strava < Formula
  desc "Babashka CLI for Strava API v3"
  homepage "https://github.com/bnii/bb-strava"
  url "https://github.com/bnii/bb-strava/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9c8f2f638434298e48a325bc3341ce5c45264ad067fdbd1b257071ba6c1ff1a6"
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
