class RubyHtmlToPdf
  class Error < StandardError; end
  class ImproperSourceError < Error
    def initialize(msg)
      super("Improper Source: #{msg}")
    end
  end

  attr_accessor :source

  def initialize(url)
    @source = Source.new(url)
  end
end
