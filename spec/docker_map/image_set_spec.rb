require 'spec_helper'

require 'docker_map/image_set'

RSpec.describe DockerMap::ImageSet do

  subject(:image_set) { described_class.new }

  context "new" do

    it "has no images" do
      expect(image_set.images).to be_empty
    end

  end

  context "after referencing an image" do

    context "with no parent" do

      before do
        image_set["abc123"]
      end

      it "remembers the image" do
        expect(image_set.images).to have(1).entry
        expect(image_set["abc123"].id).to eq("abc123")
      end

    end

  end

end
