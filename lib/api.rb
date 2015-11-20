require 'uri'
require 'net/http'
require 'singleton'

class API
  include Singleton

  attr_accessor :status

  def started
    light(:yellow)
  end

  def failed
    light(:red)
  end

  def finished
    return unless yellow?
    light(:green)
  end

  private

  def light(color)
    uri = uri(color)
    @status = color
    return if ENV["MOCK"] == "true"
    Net::HTTP.new(uri.host, uri.port).get(uri.path, {})
  end

  def uri(color)
    base_uri = ENV['NOTIFIER_IP'] || "http://192.168.0.10:80"
    URI("#{base_uri}/#{color}/")
  end

  def yellow?
    @status == :yellow
  end
end
