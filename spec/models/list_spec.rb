# frozen_string_literal: true

require "rails_helper"

describe "モデルのテスト" do
  it "有効な投稿内容の場合は保存されるか" do
    expect(FactoryBot.build(:list)).to be_valid
  end
end

describe "投稿のテスト" do
  let!(:list) { create(:list, title: "hoge", body: "body") }

  describe "トップ画面(top_path)のテスト" do
    before do
      visit top_path
    end
    context "表示の確認" do
      it "トップ画面(top_path)に「ここはトップページです」が表示されているか" do
        expect(page).to have_content "ここはトップページです"
      end
      it 'top_pathが"/top"であるか' do
        expect(top_path).to eq("/top")
      end
    end
  end
end
