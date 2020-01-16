class HazelcastBenchmark < Formula
    desc "Tool to benchmark Hazelcast IMDG member instances"
    homepage "https://github.com/mdogan/hazelcast-benchmark"
    url "https://github.com/mdogan/hazelcast-benchmark/archive/v0.3.tar.gz"
    sha256 "317b44d5cbf253720b0773df83b5923dc0e7590ddc70665776b8dc11607e642b"

    bottle :unneeded

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
          system "go", "build", "-o", bin/"hazelcast-benchmark"
          prefix.install_metafiles
      end

  end
