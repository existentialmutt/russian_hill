require "russian_hill/version"

class RussianHill
  include CableReady::Broadcaster

  def initialize(context)
    @context = context
    @operations = cable_car
    yield self if ::Kernel.block_given?
  end

  # Yields a builder and automatically turns the result into a JSON string
  def self.encode(*args, &block)
    new(*args, &block).target!
  end

  def target!
    @operations.dispatch.to_json
  end

  def method_missing symbol, *args
    @operations = @operations.public_send(symbol, *args)
  end
end

class CableCarHandler
  cattr_accessor :default_format
  self.default_format = :cablecar

  def self.call(template, source = nil)
    source ||= template.source
    # this juggling is required to keep line numbers right in the error
    %{__already_defined = defined?(operations); operations||=RussianHill.new(self); #{source}
      operations.target! unless (__already_defined && __already_defined != "method")}
  end
end
require 'russian_hill/railtie' if defined?(Rails)
