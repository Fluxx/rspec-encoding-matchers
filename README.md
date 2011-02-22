RSpec Encoding Matchers
=======================

Provides RSpec matchers for Ruby 1.9 string encoding.

Installation
------------

`gem install rspec-encoding-matchers`

Then require the gem:

`require 'rspec_encoding_matchers`

Configuration
-------------

To use the custom matchers, include the matcher module either in an example group:

    describe "my group" do
      include RspecEncodingMatchers
      it "is encoded in UTF-8" do
        hello.should be_encoded_as("UTF-8")
      end
    end

Or you can include the module in your RSpec configuration.

    # spec_helper.rb
    RSpec.configure do |config|
      config.color_enabled = true
      config.include RSpecEncodingMatchers
    end

Usage
-----

RSpecEncodingMatchers provides two types of matchers.  The first type, `be_encoded_as`, matches to see if the subject is the encoding passed in as a parameter.

    "my string".should be_encoded_as("UTF-8")
    
RSpecEncodingMatchers also provides built in matchers for all known string encodings (and their alternate names) to Ruby.  For example:

    "my string".should be_iso_8859_1_encoded

Presently, the following built in encoding matchers are available.

* be\_ascii\_8bit\_encoded
* be\_binary\_encoded
* be\_utf\_8\_encoded
* be\_cp65001\_encoded
* be\_locale\_encoded
* be\_external\_encoded
* be\_filesystem\_encoded
* be\_us\_ascii\_encoded
* be\_ascii\_encoded
* be\_ansi\_x3.4\_1968\_encoded
* be\_646\_encoded
* be\_big5\_encoded
* be\_cp950\_encoded
* be\_big5\_hkscs\_encoded
* be\_cp951\_encoded
* be\_big5\_uao\_encoded
* be\_cp949\_encoded
* be\_emacs\_mule\_encoded
* be\_euc\_jp\_encoded
* be\_eucjp\_encoded
* be\_euc\_kr\_encoded
* be\_euckr\_encoded
* be\_euc\_tw\_encoded
* be\_euctw\_encoded
* be\_gb18030\_encoded
* be\_gbk\_encoded
* be\_cp936\_encoded
* be\_iso\_8859\_1\_encoded
* be\_iso8859\_1\_encoded
* be\_iso\_8859\_2\_encoded
* be\_iso8859\_2\_encoded
* be\_iso\_8859\_3\_encoded
* be\_iso8859\_3\_encoded
* be\_iso\_8859\_4\_encoded
* be\_iso8859\_4\_encoded
* be\_iso\_8859\_5\_encoded
* be\_iso8859\_5\_encoded
* be\_iso\_8859\_6\_encoded
* be\_iso8859\_6\_encoded
* be\_iso\_8859\_7\_encoded
* be\_iso8859\_7\_encoded
* be\_iso\_8859\_8\_encoded
* be\_iso8859\_8\_encoded
* be\_iso\_8859\_9\_encoded
* be\_iso8859\_9\_encoded
* be\_iso\_8859\_10\_encoded
* be\_iso8859\_10\_encoded
* be\_iso\_8859\_11\_encoded
* be\_iso8859\_11\_encoded
* be\_iso\_8859\_13\_encoded
* be\_iso8859\_13\_encoded
* be\_iso\_8859\_14\_encoded
* be\_iso8859\_14\_encoded
* be\_iso\_8859\_15\_encoded
* be\_iso8859\_15\_encoded
* be\_iso\_8859\_16\_encoded
* be\_iso8859\_16\_encoded
* be\_koi8\_r\_encoded
* be\_cp878\_encoded
* be\_koi8\_u\_encoded
* be\_shift\_jis\_encoded
* be\_sjis\_encoded
* be\_utf\_16be\_encoded
* be\_ucs\_2be\_encoded
* be\_utf\_16le\_encoded
* be\_utf\_32be\_encoded
* be\_ucs\_4be\_encoded
* be\_utf\_32le\_encoded
* be\_ucs\_4le\_encoded
* be\_windows\_1251\_encoded
* be\_cp1251\_encoded
* be\_ibm437\_encoded
* be\_cp437\_encoded
* be\_ibm737\_encoded
* be\_cp737\_encoded
* be\_ibm775\_encoded
* be\_cp775\_encoded
* be\_cp850\_encoded
* be\_ibm850\_encoded
* be\_ibm852\_encoded
* be\_cp852\_encoded
* be\_ibm855\_encoded
* be\_cp855\_encoded
* be\_ibm857\_encoded
* be\_cp857\_encoded
* be\_ibm860\_encoded
* be\_cp860\_encoded
* be\_ibm861\_encoded
* be\_cp861\_encoded
* be\_ibm862\_encoded
* be\_cp862\_encoded
* be\_ibm863\_encoded
* be\_cp863\_encoded
* be\_ibm864\_encoded
* be\_cp864\_encoded
* be\_ibm865\_encoded
* be\_cp865\_encoded
* be\_ibm866\_encoded
* be\_cp866\_encoded
* be\_ibm869\_encoded
* be\_cp869\_encoded
* be\_windows\_1258\_encoded
* be\_cp1258\_encoded
* be\_gb1988\_encoded
* be\_maccenteuro\_encoded
* be\_maccroatian\_encoded
* be\_maccyrillic\_encoded
* be\_macgreek\_encoded
* be\_maciceland\_encoded
* be\_macroman\_encoded
* be\_macromania\_encoded
* be\_macthai\_encoded
* be\_macturkish\_encoded
* be\_macukraine\_encoded
* be\_stateless\_iso\_2022\_jp\_encoded
* be\_eucjp\_ms\_encoded
* be\_euc\_jp\_ms\_encoded
* be\_cp51932\_encoded
* be\_gb2312\_encoded
* be\_euc\_cn\_encoded
* be\_euccn\_encoded
* be\_gb12345\_encoded
* be\_iso\_2022\_jp\_encoded
* be\_iso2022\_jp\_encoded
* be\_iso\_2022\_jp\_2\_encoded
* be\_iso2022\_jp2\_encoded
* be\_cp50220\_encoded
* be\_cp50221\_encoded
* be\_windows\_1252\_encoded
* be\_cp1252\_encoded
* be\_windows\_1250\_encoded
* be\_cp1250\_encoded
* be\_windows\_1256\_encoded
* be\_cp1256\_encoded
* be\_windows\_1253\_encoded
* be\_cp1253\_encoded
* be\_windows\_1255\_encoded
* be\_cp1255\_encoded
* be\_windows\_1254\_encoded
* be\_cp1254\_encoded
* be\_tis\_620\_encoded
* be\_windows\_874\_encoded
* be\_cp874\_encoded
* be\_windows\_1257\_encoded
* be\_cp1257\_encoded
* be\_windows\_31j\_encoded
* be\_cp932\_encoded
* be\_cswindows31j\_encoded
* be\_macjapanese\_encoded
* be\_macjapan\_encoded
* be\_utf\_7\_encoded
* be\_cp65000\_encoded
* be\_utf8\_mac\_encoded
* be\_utf\_8\_mac\_encoded
* be\_utf\_8\_hfs\_encoded
* be\_utf8\_docomo\_encoded
* be\_sjis\_docomo\_encoded
* be\_utf8\_kddi\_encoded
* be\_sjis\_kddi\_encoded
* be\_iso\_2022\_jp\_kddi\_encoded
* be\_stateless\_iso\_2022\_jp\_kddi\_encoded
* be\_utf8\_softbank\_encoded
* be\_sjis\_softbank\_encoded