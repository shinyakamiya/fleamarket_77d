require 'rails_helper'

describe User do
  describe '#create' do

    it "nickname,email,password,password_confirmation,firstname,lastname,firstname_kana,lastname_kana,birth_dayが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "nikcnameがない場合は登録できないこと" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "emailがない場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください", "は不正な値です")
    end

    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください", "は7文字以上で入力してください")
    end

    it "firstnameがない場合は登録できないこと" do
      user = build(:user, firstname: "")
      user.valid?
      expect(user.errors[:firstname]).to include("を入力してください", "は不正な値です")
    end

    it "lastnameがない場合は登録できないこと" do
      user = build(:user, lastname: "")
      user.valid?
      expect(user.errors[:lastname]).to include("を入力してください", "は不正な値です")
    end
    
    it "firstname_kanaがない場合は登録できないこと" do
      user = build(:user, firstname_kana: "")
      user.valid?
      expect(user.errors[:firstname_kana]).to include("を入力してください", "は不正な値です")
    end

    it "lastname_kanaがない場合は登録できないこと" do
      user = build(:user, lastname_kana: "")
      user.valid?
      expect(user.errors[:lastname_kana]).to include("を入力してください", "は不正な値です")
    end

    it "birthdayがない場合は登録できないこと" do
      user = build(:user, birthday: "")
      user.valid?
      expect(user.errors[:birthday]).to include("を入力してください")
    end

    
    it " 重複したemailが存在する場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
    
    it " passwordが7文字以上であれば登録できること " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      expect(user).to be_valid
    end

    it " passwordが6文字以下であれば登録できないこと " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end

    it " firstnameが全角でないと登録できないこと" do
      user = build(:user, firstname: "test" )
      user.valid?
      expect(user.errors[:firstname]).to include("は不正な値です")
    end

    it " lastnameが全角でないと登録できないこと" do
      user = build(:user, lastname: "test" )
      user.valid?
      expect(user.errors[:lastname]).to include("は不正な値です")
    end

    it " first_nameが全角でないと登録できないこと" do
      user = build(:user, firstname_kana: "test" )
      user.valid?
      expect(user.errors[:firstname_kana]).to include("は不正な値です")
    end

    it " lastname_kanaが全角でないと登録できないこと" do
      user = build(:user, lastname_kana: "test" )
      user.valid?
      expect(user.errors[:lastname_kana]).to include("は不正な値です")
    end

  end
end