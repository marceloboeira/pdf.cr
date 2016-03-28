require "./../spec_helper"

describe PDF::Document do
  context "output" do
    let(document) { PDF::Document.new }

    it "generates a header with the version" do
      expect(document.to_s).to match(/%PDF-1.3/)
    end

    it "generates a footer" do
      expect(document.to_s).to match(/%%EOF/)
    end
  end
end
