require "spec_helper"

RSpec.describe "API" do
  before do
    @api = API.instance
    @focuzo = Focuzo.new(nil)
  end

  it "started" do
    expect(@api).to receive(:light).with(:yellow)
    expect(@api).to_not receive(:light).with(:red)
    expect(@api).to_not receive(:light).with(:green)
    @focuzo.start(nil)
  end

  it "started and fail" do
    expect(@api).to receive(:light).with(:yellow)
    expect(@api).to receive(:light).with(:red)
    expect(@api).to_not receive(:light).with(:green)
    @focuzo.start(nil)
    @focuzo.example_failed(nil)
    @focuzo.close(nil)
  end

  it "started and finished" do
    expect(@api).to receive(:started)
    expect(@api).to_not receive(:failed)
    expect(@api).to receive(:finished)
    @focuzo.start(nil)
    @focuzo.close(nil)
  end
end
