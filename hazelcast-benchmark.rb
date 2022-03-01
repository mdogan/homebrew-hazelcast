class HazelcastBenchmark < Formula
    desc "Tool to benchmark Hazelcast IMDG member instances"
    homepage "https://github.com/mdogan/hazelcast-benchmark"
    url "https://github.com/mdogan/hazelcast-benchmark/archive/v0.3.tar.gz"
    sha256 "7c15f7544141aa18d7ef900e82db1635cf4ba0e12d100e5ff8e8870a41a5b450"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
          system "go", "build", "-o", bin/"hazelcast-benchmark"
          prefix.install_metafiles
      end

  end
