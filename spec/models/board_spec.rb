require "rails_helper"

RSpec.describe Board, type: :model do
  describe "#create" do
    subject { Board.create(params) }

    context "success" do
      let(:params) do
        { 
          name: "test", 
          title: Faker::Name.name,
          body: Faker::Name.name, 
        } 
      end

      it do
        subject
        expect(subject["id"]).not_to be_nil
        expect(subject["name"]).to eq params[:name]
        expect(subject["title"]).to eq params[:title]
        expect(subject["body"]).to eq params[:body]
      end
    end
  end
end