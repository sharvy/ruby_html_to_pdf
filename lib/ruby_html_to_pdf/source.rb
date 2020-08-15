class RubyHtmlToPdf
  class Source
    def initialize(url)
      @source = url
    end

    def url?
      @is_url ||= @source.is_a?(String) && @source.match(/\Ahttp/)
    end

    def to_s
      @source
    end
  end
end
