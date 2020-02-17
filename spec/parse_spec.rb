require "parse"


 describe Parse do

   describe "#parser" do
     it "parses contents of file" do
       expect(subject.parser("webserver.log")).to include(['/contact', '184.123.665.067'])
     end
   end

 end
