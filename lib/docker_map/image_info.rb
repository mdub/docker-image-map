module DockerMap

  class ImageInfo

    def initialize(id)
      @id = id
      @tags = Set.new
      @children = []
    end

    attr_reader :id
    attr_accessor :date
    attr_accessor :parent
    attr_reader :children
    attr_reader :tags

  end

end
