require "./spec_helper"

describe PDF do
  context "output" do
    pdf = PDF.new

    it "generates a header with the version" do
      pdf.to_s.should match(/%PDF-1.3/)
    end
  end
end
