require "parse"


 describe Parse do

   describe "#parser" do
     it "parses contents of file" do
       expect(subject.parser("webserver.log")).to include(["/contact", "184.123.665.067"])
     end
   end

   describe "#most_viewed" do
     it "shows the most viewed pages" do
       subject.parser("webserver.log")
       expect(subject.most_viewed).to eq([["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]])
     end
   end

   describe '#unique_views' do
    it 'shows a list of the most unique page views in descending order' do
      subject.parser('webserver.log')
      expect(subject.unique_views).to eq([["/about/2", 90], ["/contact", 89], ["/index", 82]])
    end
  end

 end
