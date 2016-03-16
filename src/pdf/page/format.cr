module PDF
  class Page
    class Format
      getter :height, :width

      def initialize(@width : Float, @height : Float); end

      A3 = PDF::Page::Format.new(297, 420)
    end
  end
end
