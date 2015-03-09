require "docker_image_map/image_info"

module DockerImageMap

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
