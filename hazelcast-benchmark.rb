class HazelcastBenchmark < Formula
    desc "Tool to benchmark Hazelcast IMDG member instances"
    homepage "https://github.com/mdogan/hazelcast-benchmark"
    url "https://github.com/mdogan/hazelcast-benchmark/archive/v0.2.tar.gz"
    sha256 "cea40dfb1b93ff3c09336fc7da3d75b200d2ea1ce70bbddb506d03a67279824d"

    bottle :unneeded

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
          system "go", "build", "-o", bin/"hazelcast-benchmark"
          prefix.install_metafiles
      end

  end
