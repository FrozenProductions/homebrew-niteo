class Niteo < Formula
  desc "Standalone Rust CLI for TypeScript structural linting"
  homepage "https://github.com/FrozenProductions/Niteo"
  url "https://github.com/FrozenProductions/Niteo/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "bc3d2de4fbede9f7349da03bd4c4f24053394ba01d330ee0a027dec10b26a9e7"
  license "MIT"

  bottle do
    root_url "https://github.com/FrozenProductions/Niteo/releases/download/v0.2.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "52a4ca337b1291fd0a8d87e1cf957e11eb414171c768af27f6166ca13937f3a7"
    sha256 cellar: :any_skip_relocation, sequoia:       "102af647ed00f41ff88044a13d696204cb999e62ceb52803de206a7eb79509d0"
    sha256 cellar: :any,                 x86_64_linux:  "cfab14d6a9b7383f9f6207b04b52b9630b1a41e92e8c698e1696b5e5eb8a24b4"
  end







  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/niteo --help")
  end
end
