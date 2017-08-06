# spec/knight_route_finder_spec.rb
require "knight_route_finder.rb"

describe KnightRouteFinder do

  describe "::algebraic_to_coordinates" do
    context "given a valid algebraic location" do
      it "returns the correct coordinates" do
        expect(KnightRouteFinder::algebraic_to_coordinates("A4")).to eql([0,3])
        expect(KnightRouteFinder::algebraic_to_coordinates("D8")).to eql([3,7])
      end
    end
  end

  describe "::coordinates_to_algebraic" do
    context "given valid coordinate list" do
      it "returns the correct algebraic notation" do
        expect(KnightRouteFinder::coordinates_to_algebraic([0,3])).to eql("A4")
        expect(KnightRouteFinder::coordinates_to_algebraic([3,7])).to eql("D8")
      end
    end
  end


end
