require 'rails_helper'

RSpec.describe "Technologies", type: :request do
  describe "GET /technologies" do
    it "works! (now write some real specs)" do
      get technologies_path
      expect(response).to have_http_status(200)
    end
  end
end
