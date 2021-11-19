RSpec.describe User, type: :model do
  context "必要な情報が揃っているとき" do
    let(:user) { build(:user) }

    it "userが作られる" do
      expect(user).to be_valid
    end
  end

  context "nameが存在しないとき" do
    let(:user) { build(:user, name: nil) }

    it "エラーする" do
      expect(user).not_to be_valid
    end
  end

  context "email がない場合" do
    let(:user) { build(:user, email: nil) }

    it "エラーが発生する" do
      expect(user).not_to be_valid
    end
  end

  context "passwordがないとき" do
    let(:user) { build(:user, password: nil) }

    it "エラーする" do
      expect(user).not_to be_valid
    end
  end
end
