require "spec_helper"

RSpec.describe "Failure" do
  it "not equal" do
    expect(1).to eq(2)
  end
end

RSpec.describe "Success" do
  it "equal" do
    expect(1).to eq(1)
  end
end

