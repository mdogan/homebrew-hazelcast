class HazelcastBenchmark < Formula
    desc "Tool to benchmark Hazelcast IMDG member instances"
    homepage "https://github.com/mdogan/hazelcast-benchmark"
    url "https://github.com/mdogan/hazelcast-benchmark/archive/v0.1.tar.gz"
    sha256 "830b49281e8532c7cc8292f2a709ede4af9e6b9f95dd86c1c8ab0e6bf7fcc13b"

    bottle :unneeded

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
          system "go", "build", "-o", bin/"hazelcast-benchmark"
          prefix.install_metafiles
      end

  end
