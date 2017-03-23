require 'open-uri'
require 'rexml/document'
require 'kconv'

# URIを設定
uri = ARGV[0]
print("uri = ", uri, "\n")

begin
  open(uri) { |f|
    doc = REXML::Document.new(f)
    sample = doc.root
    print("root element name = ", sample.name, "\n")
    print("root element text = ", sample.text.tosjis, "\n")
  }
end
