FactoryBot.define do

  factory :user do 
    nickname { "test" }
    email { "TEST@example.com" }
    password { "0000000" }
    password_confirmation { "0000000" }
    firstname { "山田" }
    lastname { "太郎" }
    firstname_kana { "やまだ" }
    lastname_kana { "たろう" }
    birthday { "2000-01-01" }    
  end

end