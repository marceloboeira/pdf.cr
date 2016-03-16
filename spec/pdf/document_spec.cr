require "./../spec_helper"

describe PDF::Document do
  context "output" do
    document = PDF::Document.new

    it "generates a header with the version" do
      document.to_s.should match(/%PDF-1.3/)
    end

    it "generates a footer" do
      document.to_s.should match(/%%EOF/)
    end
  end
end
