RSpec.describe Musi do
  it "has a version number" do
    expect(Musi::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

describe Musi::Sharp do
  it "raises a note a half step" do
    expect(Musi::Sharp.portray("C")). to eql("C#")
  end
end
