class Parse

  attr_reader :contents, :page_views

  def initialize
    @contents = []
    @page_views = []
  end

  def parser(file)
    File.foreach(file) do |line|
      @contents << line
    end
    @contents = @contents.map { |i| i.split(' ') }
  end

  def most_viewed
    views = Hash.new(0)
    @page_views = @contents.map { |line| line[0] }
    @page_views = @page_views.each  { |url| views[url] += 1 }
    @page_views = views.sort_by { |_k, v| v }.reverse
  end
end
