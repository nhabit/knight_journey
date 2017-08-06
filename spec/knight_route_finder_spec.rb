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

  describe "::is_it_legal?" do
    context "given a legal number" do
      it "returns true if the number is between 0 and 7 (the size of zero-indexed chessboard)" do
        expect(KnightRouteFinder::is_it_legal?(4)).to eql(true)
        expect(KnightRouteFinder::is_it_legal?(4)).to eql(true)
      end
    end
  end

  describe "::is_it_legal?" do
    context "given an illegal number" do
      it "returns false if the number is NOT between 0 and 7 (the size of zero-indexed chessboard)" do
        expect(KnightRouteFinder::is_it_legal?(8)).to eql(false)
        expect(KnightRouteFinder::is_it_legal?(-3)).to eql(false)
      end
    end
  end

  describe "::are_they_legal?" do
    context "given an a list of coordinates" do
      it "returns false if any one of the coordinates is illegal" do
        expect(KnightRouteFinder::are_they_legal?([[8,4],[1,2]])).to eql(false)
      end
    end
  end

  describe "::are_they_legal?" do
    context "given an a list of coordinates" do
      it "returns true if all of the coordinates are legal" do
        expect(KnightRouteFinder::are_they_legal?([[7,4],[1,2]])).to eql(true)
      end
    end
  end

end
