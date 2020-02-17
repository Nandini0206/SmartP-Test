class Parse

  attr_reader :contents

  def initialize
    @contents = []
  end

  def parser(file)
    File.foreach(file) do |line|
      @contents << line
    end
    @contents = @contents.map { |i| i.split(' ') }
  end

end
