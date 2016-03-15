require "./pdf/*"

class PDF
  PDF_VERSION = 1.3
  LINE_BREAK = "\n"

  def to_s
    buffer = header
    buffer += LINE_BREAK
    buffer += footer

    buffer
  end

  private def header
    "%PDF-#{PDF_VERSION}"
  end

  private def footer
    "%%EOF"
  end
end
