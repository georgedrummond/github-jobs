require 'ostruct'
require 'open-uri'
require 'json'
require 'uri'

module Github
  class Job < OpenStruct

    def ==(other)
      self.id == other.id
    end
  end

  class Jobs
    VERSION = '0.0.1'

    def self.positions(opts={})
      params = opts.merge(page: 0)
                   .map { |k, v| "#{URI.encode(k.to_s)}=#{URI.encode(v.to_s)}" }
                   .join('&')

      json = JSON.parse(open("https://jobs.github.com/positions.json?#{params}").read)

      json.map { |job| Github::Job.new(job) }
    end
  end
end
