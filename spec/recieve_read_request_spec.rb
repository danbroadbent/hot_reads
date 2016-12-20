require 'rails_helper'

RSpec.describe "Recieves Read", :type => :request do

  it "recieves a read from URLockbox" do
    post "/reads", read: {title: "test", url: "http://www.example.com"}

    expect(Read.count).to eq.(1)
  end
end
