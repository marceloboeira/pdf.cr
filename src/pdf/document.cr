module PDF
  class Document
    PDF_VERSION = 1.3
    LINE_BREAK = "\n"

    def to_s(io)
      io << header
      io << LINE_BREAK
      io << footer
    end

    private def header
      "%PDF-#{PDF_VERSION}"
    end

    private def footer
      "%%EOF"
    end
  end
end
