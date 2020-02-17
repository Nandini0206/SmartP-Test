require "parse"


 describe Parse do

   describe '#parser' do
    it 'parses contents of file when file exists' do
      expect(subject.parser('webserver.log')).to include(['/contact', '184.123.665.067'])
    end

    it 'raises error when incorrect filename' do
      expect { subject.parser('web.log') }.to raise_error 'File does not exist'
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
      expect(subject.unique_views).to eq([["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]])
    end
  end

 end
