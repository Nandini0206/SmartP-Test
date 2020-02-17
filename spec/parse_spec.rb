require "parse"


 describe Parse do

   describe "#parser" do
     it "parses contents of file" do
       expect(subject.parser("webserver.log")).to include(['/contact', '184.123.665.067'])
     end
   end

   describe "#most_viewed" do
     it "shows the most viewed pages" do
       subject.parser("webserver.log")
       expect(subject.most_viewed).to eq([["/about/2", 20], ["/contact", 80], ["/help_page/1", 50]])
     end
   end

 end
