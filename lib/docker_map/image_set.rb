require "docker_map/image_info"

module DockerMap

  class ImageSet

    def initialize
      @images = {}
    end

    attr_reader :images

    def [](id)
      @images[id] ||= ImageInfo.new(id)
    end

    def roots
      @images.values.select { |i| i.parent.nil? }
    end

  end

end
