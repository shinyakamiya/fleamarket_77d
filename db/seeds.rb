ladies = Category.create(name:"レディース")
mens = Category.create(name: "メンズ")
babies = Category.create(name: "ベビー・キッズ")
interiors = Category.create(name: "インテリア・住まい・小物")
books = Category.create(name: "本・音楽・ゲーム")
hobies = Category.create(name: "おもちゃ・ホビー・グッズ")
cosmetics = Category.create(name: "コスメ・香水・美容")
electronics = Category.create(name: "家電・スマホ・カメラ")
sports = Category.create(name: "スポーツ・レジャー")
handmades = Category.create(name: "ハンドメイド")
tickets = Category.create(name: "チケット")
mobiles = Category.create(name: "自動車・オートバイ")
others = Category.create(name: "その他")



ladies_tops = ladies.children.create(name:"トップス")
ladies_tops.children.create([{:name=>"すべて"}, {:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"},{:name=>"シャツ/ブラウス(半袖/袖なし)"},{:name=>"シャツ/ブラウス(七分/長袖)"},{:name=>"ポロシャツ"},{:name=>"キャミソール"},{:name=>"タンクトップ"},{:name=>"ホルターネック"},{:name=>"ニット/セーター"},{:name=>"チュニック"},{:name=>"カーディガン/ボレロ"},{:name=>"アンサンブル"},{:name=>"ベスト/ジレ"},{:name=>"パーカー"},{:name=>"トレーナー/スウェット"},{:name=>"ベアトップ/チューブトップ"},{:name=>"ジャージ"},{:name=>"その他"}])

ladies_jacket =ladies.children.create(name:"ジャケット/アウター")
ladies_jacket.children.create([{:name=>"テーラードジャケット"},{:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ダウンベスト"},{:name=>"ジャンパー/ブルソン"},{:name=>"ポンチョ"},{:name=>"ロングコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"チェスターコート"},{:name=>"モッズコート"},{:name=>"スタジャン"},{:name=>"毛皮/ファーコート"},{:name=>"スプリングコート"},{:name=>"スカジャン"},{:name=>"その他"}])

ladies_pants = ladies.children.create(name: "パンツ")
ladies_pants.children.create([{:name=>"デニム/ジーンズ"},{:name=>"ショートパンツ"},{:name=>"カジュアルパンツ"},{:name=>"ハーフパンツ"},{:name=>"チノパン"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"クロップドパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"オールインワン"},{:name=>"サルエルパンツ"},{:name=>"ガウチョパンツ"},{:name=>"その他"}])

ladies_skirts = ladies.children.create(name: "スカート")
ladies_skirts.children.create([{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングスカート"},{:name=>"キュロット"},{:name=>"その他"}])

ladies_dresses = ladies.children.create(name: "ワンピース")
ladies_dresses.children.create([{:name=>"ミニワンピース"},{:name=>"ひざ丈ワンピース"},{:name=>"ロングワンピース"},{:name=>"その他"}])

ladies_shoes = ladies.children.create(name: "靴")
ladies_shoes.children.create([{:name=>"ハイヒール/パンプス"},{:name=>"ブーツ"},{:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴/レインシューズ"},{:name=>"その他"},])

ladies_roomwears = ladies.children.create(name: "ルームウェア/パジャマ")
ladies_roomwears.children.create([{:name=>"パジャマ"},{:name=>"ルームウェア"}])

ladies_socks = ladies.children.create(name: "レッグウェア")
ladies_socks.children.create([{:name=>"ソックス"},{:name=>"スパッツ/レギンス"},{:name=>"ストッキング/タイツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])

ladies_caps = ladies.children.create(name: "帽子")
ladies_caps.children.create([{:name=>"ニットキャップ/ビーニー"},{:name=>"ハット"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャップ"},{:name=>"　キャスケット"},{:name=>"麦わら帽子"},{:name=>"その他"}])

ladies_bags = ladies.children.create(name: "バッグ")
ladies_bags.children.create([{:name=>"ハンドバッグ"},{:name=>"トートバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"スポーツバッグ"},{:name=>"ショルダーバッグ"},{:name=>"クラッチバッグ"},{:name=>"クラッチバッグ"},{:name=>"ポーチ/バニティ"},{:name=>"ボディバッグ/ウェストバッグ"},{:name=>"マザーズバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"旅行用バッグ/キャリーバッグ"},{:name=>"ショップ袋"},{:name=>"和装用バッグ"},{:name=>"かごバッグ"},{:name=>"その他"}])

ladies_accessories = ladies.children.create(name: "アクセサリー")
ladies_accessories.children.create([{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス(片耳用)"},{:name=>"ピアス(両耳用)"},{:name=>"イヤリング"},{:name=>"アンクレット"},{:name=>"ブローチ/コサージュ"},{:name=>"チャーム"},{:name=>"その他"}])

ladies_hear_accessories = ladies.children.create(name: "ヘアアクセサリー")
ladies_hear_accessories.children.create([{:name=>"ヘアゴム/シュシュ"},{:name=>"ヘアバンド"},{:name=>"ヘアピン"},{:name=>"その他"}])

ladies_goods = ladies.children.create(name: "小物")
ladies_goods.children.create([{:name=>"長財布"},{:name=>"折り財布"},{:name=>"コインケース/小銭入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"手袋/アームカバー"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー/ショール"},{:name=>"ストール/スヌード"},{:name=>"バンダナ/スカーフ"},{:name=>"ネックウォーマー"},{:name=>"サスペンダー"},{:name=>"サングラス/メガネ"},{:name=>"モバイルケース/カバー"},{:name=>"手帳"},{:name=>"イヤマフラー"},{:name=>"傘"},{:name=>"レインコート/ポンチョ"},{:name=>"ミラー"},{:name=>"タバコグッズ"},{:name=>"その他"}])

ladies_watches = ladies.children.create(name: "時計")
ladies_watches.children.create([{:name=>"腕時計(アナログ)"},{:name=>"腕時計(デジタル)"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}])

ladies_wigs = ladies.children.create(name: "ウィッグ/エクステ")
ladies_wigs.children.create([{:name=>"前髪ウィッグ"},{:name=>"ロングストレート"},{:name=>"ロングカール"},{:name=>"ショートストレート"},{:name=>"ショートカール"},{:name=>"その他"}])

ladies_seasons = ladies.children.create(name: "浴衣/水着")
ladies_seasons.children.create([{:name=>"浴衣"},{:name=>"着物"},{:name=>"振袖"},{:name=>"長襦袢/半襦袢"},{:name=>"水着セパレート"},{:name=>"水着ワンピース"},{:name=>"水着スポーツ用"},{:name=>"その他"}])

ladies_suits = ladies.children.create(name: "スーツ/フォーマル/ドレス")
ladies_suits.children.create([{:name=>"スカートスーツ上下"},{:name=>"パンツスーツ上下"},{:name=>"ドレス"},{:name=>"パーティーバッグ"},{:name=>"シューズ"},{:name=>"ウェディング"},{:name=>"その他"}])

ladies_maternities = ladies.children.create(name: "マタニティ")
ladies_maternities.children.create([{:name=>"トップス"},{:name=>"アウター"},{:name=>"インナー"},{:name=>"ワンピース"},{:name=>"パンツ/スパッツ"},{:name=>"スカート"},{:name=>"パジャマ"},{:name=>"授乳服"},{:name=>"その他"}])

ladies_others = ladies.children.create(name: "その他")
ladies_others.children.create([{:name=>"コスプレ"},{:name=>"下着"},{:name=>"その他"}])



mens_tops = mens.children.create(name: "トップス")
mens_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"},{:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ"},{:name=>"ポロシャツ"},{:name=>"タンクトップ"},{:name=>"ニット/セーター"},{:name=>"パーカー"},{:name=>"カーディガン"},{:name=>"スウェット"},{:name=>"ジャージ"},{:name=>"ベスト"},{:name=>"その他"}])

mens_jackets = mens.children.create(name: "ジャケット/アウター")
mens_jackets.children.create([{:name=>"テーラードジャケット"},{:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ナイロンジャケット"},{:name=>"フライトジャケット"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"ステンカラーコート"},{:name=>"トレンチコート"},{:name=>"モッズコート"},{:name=>"チェスターコート"},{:name=>"スタジャン"},{:name=>"スカジャン"},{:name=>"ブルゾン"},{:name=>"マウンテンパーカー"},{:name=>"ダウンベスト"},{:name=>"ポンチョ"},{:name=>"カバーオール"},{:name=>"その他"}])

mens_pants = mens.children.create(name: "パンツ")
mens_pants.children.create([{:name=>"デニム/ジーンズ"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"スラックス"},{:name=>"チノパン"},{:name=>"ショートパンツ"},{:name=>"ペインターパンツ"},{:name=>"サルエルパンツ"},{:name=>"オーバーオール"},{:name=>"その他"}])

mens_shoes = mens.children.create(name: "靴")
mens_shoes.children.create([{:name=>"スニーカー"},{:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"モカシン"},{:name=>"ドレス/ビジネス"},{:name=>"長靴/レインシューズ"},{:name=>"デッキシューズ"},{:name=>"その他"}])

mens_bags = mens.children.create(name: "バッグ")
mens_bags.children.create([{:name=>"ショルダーバッグ"},{:name=>"トートバッグ"},{:name=>"ボストンバッグ"},{:name=>"リュック/バックパック"},{:name=>"ウエストポーチ"},{:name=>"ボディーバッグ"},{:name=>"ドラムバッグ"},{:name=>"ビジネスバッグ"},{:name=>"トラベルバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"エコバッグ"},{:name=>"その他"}])

mens_suits = mens.children.create(name: "スーツ")
mens_suits.children.create([{:name=>"スーツジャケット"},{:name=>"スーツベスト"},{:name=>"スラックス"},{:name=>"セットアップ"},{:name=>"その他"}])

mens_caps = mens.children.create(name: "帽子")
mens_caps.children.create([{:name=>"キャップ"},{:name=>"ハット"},{:name=>"ニットキャップ/ビーニー"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャスケット"},{:name=>"サンバイザー"},{:name=>"その他"}])

mens_accessories = mens.children.create(name: "アクセサリー")
mens_accessories.children.create([{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス(片耳用)"},{:name=>"ピアス(両耳用)"},{:name=>"アンクレット"},{:name=>"その他"}])

mens_goods = mens.children.create(name: "小物")
mens_goods.children.create([{:name=>"長財布"},{:name=>"折り財布"},{:name=>"マネークリップ"},{:name=>"コインケース/小銭入れ"},{:name=>"名刺入れ/定期入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"ネクタイ"},{:name=>"手袋"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"ストール"},{:name=>"バンダナ"},{:name=>"ネックウォーマー"},{:name=>"サスペンダー"},{:name=>"ウォレットチェーン"},{:name=>"サングラス/メガネ"},{:name=>"モバイルケース/カバー"},{:name=>"手帳"},{:name=>"ストラップ"},{:name=>"ネクタイピン"},{:name=>"カフリンクス"},{:name=>"イヤマフラー"},{:name=>"傘"},{:name=>"レインコート"},{:name=>"ミラー"},{:name=>"タバコグッズ"},{:name=>"その他"}])

mens_watches = mens.children.create(name: "時計")
mens_watches.children.create([{:name=>"腕時計(アナログ)"},{:name=>"腕時計(デジタル)"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}])

mens_swimwears = mens.children.create(name: "水着")
mens_swimwears.children.create([{:name=>"一般水着"},{:name=>"スポーツ用"},{:name=>"アクセサリー"},{:name=>"その他"}])

mens_socks = mens.children.create(name: "レッグウェア")
mens_socks.children.create([{:name=>"ソックス"},{:name=>"レギンス/スパッツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])

mens_underwears = mens.children.create(name: "アンダーウェア")
mens_underwears.children.create([{:name=>"トランクス"},{:name=>"ボクサーパンツ"},{:name=>"その他"}])

mens_others = mens.children.create(name: "その他")



babies_girl_smalls = babies.children.create(name: "ベビー服(女の子用)~95cm")
babies_girl_smalls.children.create([{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])

babies_boy_smalls = babies.children.create(name: "ベビー服(男の子用)~95cm")
babies_boy_smalls.children.create([{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])

babies_unisex_smalls = babies.children.create(name: "ベビー服(男女兼用)~95cm")
babies_unisex_smalls.children.create([{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])

babies_girl_bigs = babies.children.create(name: "キッズ服(女の子用)100cm~")
babies_girl_bigs.children.create([{:name=>"コート"},{:name=>"ジャケット(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(チュニック)"},{:name=>"トップス(タンクトップ)"},{:name=>"トップス(その他)"},{:name=>"スカート"},{:name=>"パンツ"},{:name=>"ワンピース"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"甚平"},{:name=>"水着"},{:name=>"その他"}])

babies_boy_bigs = babies.children.create(name: "キッズ服(男の子用)100cm~")
babies_boy_bigs.children.create([{:name=>"コート"},{:name=>"ジャケット(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(チュニック)"},{:name=>"トップス(タンクトップ)"},{:name=>"トップス(その他)"},{:name=>"スカート"},{:name=>"パンツ"},{:name=>"ワンピース"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"甚平"},{:name=>"水着"},{:name=>"その他"}])

babies_unisex_bigs = babies.children.create(name: "キッズ服(男の子用)100cm~")
babies_unisex_bigs.children.create([{:name=>"コート"},{:name=>"ジャケット(Tシャツ/カットソー)"},{:name=>"トップス(トレーナー)"},{:name=>"トップス(チュニック)"},{:name=>"トップス(タンクトップ)"},{:name=>"トップス(その他)"},{:name=>"スカート"},{:name=>"パンツ"},{:name=>"ワンピース"},{:name=>"セットアップ"},{:name=>"パジャマ"},{:name=>"フォーマル/ドレス"},{:name=>"和服"},{:name=>"浴衣"},{:name=>"甚平"},{:name=>"水着"},{:name=>"その他"}])

babies_shoes = babies.children.create(name: "キッズ靴")
babies_shoes.children.create([{:name=>"スニーカー"},{:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"長靴"},{:name=>"その他"}])

babies_fashions = babies.children.create(name: "子供用ファッション小物")
babies_fashions.children.create([{:name=>"靴下/スパッツ"},{:name=>"帽子"},{:name=>"エプロン"},{:name=>"サスペンダー"},{:name=>"タイツ"},{:name=>"ハンカチ"},{:name=>"バンダナ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"傘"},{:name=>"手袋"},{:name=>"スタイ"},{:name=>"バッグ"},{:name=>"その他"}])

babies_diapers = babies.children.create(name: "おむつ/トイレ/バス")
babies_diapers.children.create([{:name=>"おむつ用品"},{:name=>"おまる/補助便座"},{:name=>"トレーニングパンツ"},{:name=>"ベビーバス"},{:name=>"お風呂用品"},{:name=>"その他"}])

babies_babycars = babies.children.create(name: "外出/移動用品")
babies_babycars.children.create([{:name=>"ベビーカー"},{:name=>"抱っこひも/スリング"},{:name=>"チャイルドシート"},{:name=>"その他"}])

babies_foods = babies.children.create(name: "授乳/食事")
babies_foods.children.create([{:name=>"ミルク"},{:name=>"ベビーフード"},{:name=>"ベビー用食器"},{:name=>"その他"}])

babies_interiors = babies.children.create(name: "ベビー家具/寝具/室内用品")
babies_interiors.children.create([{:name=>"ベッド"},{:name=>"布団/毛布"},{:name=>"イス"},{:name=>"たんす"},{:name=>"その他"}])

babies_hobies = babies.children.create(name: "おもちゃ")
babies_hobies.children.create([{:name=>"おふろのおもちゃ"},{:name=>"がらがら"},{:name=>"オルゴール"},{:name=>"ベビージム"},{:name=>"手押し車/カタカタ"},{:name=>"知育玩具"},{:name=>"その他"}])

babies_events = babies.children.create(name: "行事/記念品")
babies_events.children.create([{:name=>"お宮参り用品"},{:name=>"お食い初め用品"},{:name=>"アルバム"},{:name=>"手形/足形"},{:name=>"その他"}])

babies_others = babies.children.create(name: "その他")
babies_others.children.create([{:name=>"母子手帳用品"},{:name=>"その他"}])



interiors_kitchens = interiors.children.create(name: "キッチン/食器")
interiors_kitchens.children.create([{:name=>"食器"},{:name=>"調理器具"},{:name=>"収納/キッチン雑貨"},{:name=>"弁当用品"},{:name=>"カトラリー(スプーン等)"},{:name=>"テーブル用品"},{:name=>"容器"},{:name=>"エプロン"},{:name=>"アルコールグッズ"},{:name=>"浄水機"},{:name=>"その他"}])

interiors_beds = interiors.children.create(name: "ベッド/マットレス")
interiors_beds.children.create([{:name=>"セミシングルベッド"},{:name=>"シングルベッド"},{:name=>"セミダブルベッド"},{:name=>"ダブルベッド"},{:name=>"ワイドダブルベッド"},{:name=>"クイーンベッド"},{:name=>"キングベッド"},{:name=>"脚付きマットレスベッド"},{:name=>"マットレス"},{:name=>"すのこベッド"},{:name=>"ロフトベッド/システムベッド"},{:name=>"簡易ベッド/折りたたみベッド"},{:name=>"収納付き"},{:name=>"その他"}])

interiors_sofas = interiors.children.create(name: "ソファ/ソファベッド")
interiors_sofas.children.create([{:name=>"ソファセット"},{:name=>"シングルソファ"},{:name=>"ラブソファ"},{:name=>"トリプルソファ"},{:name=>"オットマン"},{:name=>"コーナーソファ"},{:name=>"ビーズソファ/クッションソファ"},{:name=>"ローソファ/フロアソファ"},{:name=>"ソファベッド"},{:name=>"応援セット"},{:name=>"ソファカバー"},{:name=>"リクライニングソファ"},{:name=>"その他"}])

interiors_chairs = interiors.children.create(name: "椅子/チェア")
interiors_chairs.children.create([{:name=>"一般"},{:name=>"スツール"},{:name=>"ダイニングチェア"},{:name=>"ハイバッグチェア"},{:name=>"ロッキングチェア"},{:name=>"座椅子"},{:name=>"折り畳みイス"},{:name=>"デスクチェア"},{:name=>"その他"}])

interiors_desks = interiors.children.create(name: "机/テーブル")
interiors_desks.children.create([{:name=>"こたつ"},{:name=>"カウンターテーブル"},{:name=>"サイドテーブル"},{:name=>"センターテーブル"},{:name=>"ダイニングテーブル"},{:name=>"座卓/ちゃぶ台"},{:name=>"アウトドア用"},{:name=>"パソコン用"},{:name=>"事務机/学習机"},{:name=>"その他"}])

interiors_storages = interiors.children.create(name: "収納家具")
interiors_storages.children.create([{:name=>"リビング収納"},{:name=>"キッチン収納"},{:name=>"玄関/屋外収納"},{:name=>"バス/トイレ収納"},{:name=>"本収納"},{:name=>"本/CD/DVD収納"},{:name=>"洋服タンス/押入れ収納"},{:name=>"電話台/ファックス台"},{:name=>"ドレッサー/鏡台"},{:name=>"棚/ラック"},{:name=>"ケース/ボックス"},{:name=>"その他"}])

interiors_mats = interiors.children.create(name: "ラグ/カーペット/マット")
interiors_mats.children.create([{:name=>"ラグ"},{:name=>"カーペット"},{:name=>"ホットカーペット"},{:name=>"玄関/キッチンマット"},{:name=>"トイレ/バスマット"},{:name=>"その他"}])

interiors_curtains = interiors.children.create(name: "カーテン/ブラインド")
interiors_curtains.children.create([{:name=>"カーテン"},{:name=>"ブラインド"},{:name=>"ロールスクリーン"},{:name=>"のれん"},{:name=>"その他"}])

interiors_rights = interiors.children.create(name: "ライト/照明")
interiors_rights.children.create([{:name=>"蛍光灯/電球"},{:name=>"天井照明"},{:name=>"フロアスタンド"},{:name=>"その他"}])

interiors_bedding_goods = interiors.children.create(name: "寝具")
interiors_bedding_goods.children.create([{:name=>"布団/毛布"},{:name=>"枕"},{:name=>"シーツ/カバー"},{:name=>"その他"}])

interiors_goods = interiors.children.create(name: "インテリア小物")
interiors_goods.children.create([{:name=>"ゴミ箱"},{:name=>"ウェルカムボード"},{:name=>"オルゴール"},{:name=>"クッション"},{:name=>"クッションカバー"},{:name=>"スリッパラック"},{:name=>"ティッシュボックス"},{:name=>"バスケット/かご"},{:name=>"フォトフレーム"},{:name=>"マガジンラック"},{:name=>"モビール"},{:name=>"花瓶"},{:name=>"灰皿"},{:name=>"傘立て"},{:name=>"小物入れ"},{:name=>"置き時計"},{:name=>"掛け時計/柱時計"},{:name=>"鏡(立て掛け式)"},{:name=>"鏡(壁掛け式)"},{:name=>"置物"},{:name=>"風鈴"},{:name=>"植物/観葉植物"},{:name=>"その他"}])

interiors_events = interiors.children.create(name: "季節/年中行事")
interiors_events.children.create([{:name=>"正月"},{:name=>"成人式"},{:name=>"バレンタインデー"},{:name=>"ひな祭り"},{:name=>"子どもの日"},{:name=>"母の日"},{:name=>"父の日"},{:name=>"サマーギフト/お中元"},{:name=>"夏/夏休み"},{:name=>"ハロウィン"},{:name=>"敬老の日"},{:name=>"七五三"},{:name=>"お歳暮"},{:name=>"クリスマス"},{:name=>"冬一般"},{:name=>"その他"}])

interiors_others = interiors.children.create(name: "その他")



books_books = books.children.create(name: "本")
books_books.children.create([{:name=>"文学/小説"},{:name=>"人文/社会"},{:name=>"ノンフィクション/教養"},{:name=>"地図/旅行ガイド"},{:name=>"ビジネス/経済"},{:name=>"健康/医学"},{:name=>"コンピュータ/IT"},{:name=>"趣味/スポーツ/実用"},{:name=>"住まい/暮らし/子育て"},{:name=>"アート/エンタメ"},{:name=>"洋書"},{:name=>"絵本"},{:name=>"参考書"},{:name=>"その他"}])

books_comics = books.children.create(name: "漫画")
books_comics.children.create([{:name=>"全巻セット"},{:name=>"少年漫画"},{:name=>"少女漫画"},{:name=>"青年漫画"},{:name=>"女性漫画"},{:name=>"同人誌"},{:name=>"その他"}])

books_magazines = books.children.create(name: "雑誌")
books_magazines.children.create([{:name=>"アート/エンタメ/ホビー"},{:name=>"ファッション"},{:name=>"ニュース/総合"},{:name=>"趣味/スポーツ"},{:name=>"その他"}])

books_cds = books.children.create(name: "CD")
books_cds.children.create([{:name=>"邦楽"},{:name=>"洋楽"},{:name=>"アニメ"},{:name=>"クラシック"},{:name=>"K-POP/アジア"},{:name=>"キッズ/ファミリー"},{:name=>"その他"}])

books_dvds = books.children.create(name: "DVD/ブルーレイ")
books_dvds.children.create([{:name=>"外国映画"},{:name=>"日本映画"},{:name=>"アニメ"},{:name=>"TVドラマ"},{:name=>"ミュージック"},{:name=>"お笑い/バラエティ"},{:name=>"スポーツ/フィットネス"},{:name=>"キッズ/ファミリー"},{:name=>"その他"}])

books_records = books.children.create(name: "レコード")
books_records.children.create([{:name=>"邦楽"},{:name=>"洋楽"},{:name=>"その他"}])

books_games = books.children.create(name: "テレビゲーム")
books_games.children.create([{:name=>"家庭用ゲーム本体"},{:name=>"家庭用ゲームソフト"},{:name=>"携帯用ゲーム本体"},{:name=>"携帯用ゲームソフト"},{:name=>"PCゲーム"},{:name=>"その他"}])



hobies_hobies = hobies.children.create(name: "おもちゃ")
hobies_hobies.children.create([{:name=>"キャラクターグッズ"},{:name=>"ぬいぐるみ"},{:name=>"小物/アクセサリー"},{:name=>"模型/プラモデル"},{:name=>"ミニカー"},{:name=>"トイラジコン"},{:name=>"プラモデル"},{:name=>"ホビーラジコン"},{:name=>"鉄道模型"},{:name=>"その他"}])

hobies_tarents = hobies.children.create(name: "タレントグッズ")
hobies_tarents.children.create([{:name=>"アイドル"},{:name=>"ミュージシャン"},{:name=>"タレント/お笑い芸人"},{:name=>"スポーツ選手"},{:name=>"その他"}])

hobies_comics = hobies.children.create(name: "コミック/アニメグッズ")
hobies_comics.children.create([{:name=>"ストラップ"},{:name=>"キーホルダー"},{:name=>"バッジ"},{:name=>"カード"},{:name=>"クリアファイル"},{:name=>"クリアファイル"},{:name=>"ポスター"},{:name=>"タオル"},{:name=>"その他"}])

hobies_cards = hobies.children.create(name: "トレーディングカード")
hobies_cards.children.create([{:name=>"遊戯王"},{:name=>"マジック:ザ・キャザリング"},{:name=>"ポケモンカードゲーム"},{:name=>"デュエルマスターズ"},{:name=>"バトルスピリッツ"},{:name=>"プリパラ"},{:name=>"アイカツ"},{:name=>"カードファイト!!ヴァンガード"},{:name=>"ヴァイスシュバルツ"},{:name=>"プロ野球オーナーズリーグ"},{:name=>"ベースボールヒーローズ"},{:name=>"ドラゴンボール"},{:name=>"スリープ"},{:name=>"スリーブ"}])

hobies_figures = hobies.children.create(name: "フィギュア")
hobies_figures.children.create([{:name=>"コミック/アニメ"},{:name=>"特撮"},{:name=>"ゲームキャラクター"},{:name=>"SF/ファンタジー/ホラー"},{:name=>"アメコミ"},{:name=>"スポーツ"},{:name=>"ミリタリー"},{:name=>"その他"}])

hobies_musics = hobies.children.create(name: "楽器/器材")
hobies_musics.children.create([{:name=>"エレキギター"},{:name=>"アコースティックギター"},{:name=>"ベース"},{:name=>"エフェクター"},{:name=>"アンプ"},{:name=>"弦楽器"},{:name=>"管楽器"},{:name=>"鍵盤楽器"},{:name=>"打楽器"},{:name=>"和楽器"},{:name=>"楽譜/スコア"},{:name=>"レコーディング/PA機器"},{:name=>"DJ機器"},{:name=>"DTM/DAW"},{:name=>"その他"}])

hobies_collections = hobies.children.create(name: "コレクション")
hobies_collections.children.create([{:name=>"武具"},{:name=>"使用済切手/官製はがき"},{:name=>"旧貨幣/金貨/銀貨/記念硬貨"},{:name=>"印刷物"},{:name=>"ノベルティグッズ"},{:name=>"その他"}])

hobies_millitaries = hobies.children.create(name: "ミリタリー")
hobies_millitaries.children.create([{:name=>"トイガン"},{:name=>"個人装備"},{:name=>"その他"}])

hobies_arts = hobies.children.create(name: "美術品")
hobies_arts.children.create([{:name=>"陶芸"},{:name=>"ガラス"},{:name=>"漆芸"},{:name=>"金属工芸"},{:name=>"絵画/タペストリ"},{:name=>"版画"},{:name=>"彫刻/オブジェクト"},{:name=>"書"},{:name=>"写真"},{:name=>"その他"}])

hobies_art_goods = hobies.children.create(name: "アート用品")
hobies_art_goods.children.create([{:name=>"画材"},{:name=>"額縁"},{:name=>"その他"}])

hobies_others = hobies.children.create(name: "その他")
hobies_others.children.create([{:name=>"トランプ/UNO"},{:name=>"カルタ/百人一首"},{:name=>"ダーツ"},{:name=>"ビリヤード"},{:name=>"麻雀"},{:name=>"パズル/ジグソーパズル"},{:name=>"囲碁/将棋"},{:name=>"オセロ/チェス"},{:name=>"人生ゲーム"},{:name=>"野球/サッカーゲーム"},{:name=>"スポーツ"},{:name=>"三輪車/乗り物"},{:name=>"ヨーヨー"},{:name=>"模型製作用品"},{:name=>"鉄道"},{:name=>"航空機"},{:name=>"アマチュア無線"},{:name=>"パチンコ/パチスロ"},{:name=>"その他"}])

cosmetics_bases = cosmetics.children.create(name: "ベースメイク")
cosmetics_bases.children.create([{:name=>"ファンデーション"},{:name=>"化粧下地"},{:name=>"コントロールカラー"},{:name=>"BBカラー"},{:name=>"CCカラー"},{:name=>"コンシーラー"},{:name=>"フェイスパウダー"},{:name=>"トライアルセット/サンプル"},{:name=>"その他"}])

cosmetics_makes = cosmetics.children.create(name: "メイクアップ")
cosmetics_makes.children.create([{:name=>"アイシャドウ"},{:name=>"口紅"},{:name=>"リップグロス"},{:name=>"リップライナー"},{:name=>"チーク"},{:name=>"フェイスカラー"},{:name=>"マスカラ"},{:name=>"アイライナー"},{:name=>"つけまつげ"},{:name=>"アイブロウペンシル"},{:name=>"パウダーアイブロウ"},{:name=>"眉マスカラ"},{:name=>"トライアルセット/サンプル"},{:name=>"メイク道具/化粧小物"},{:name=>"美顔用品/美顔ローラー"},{:name=>"その他"}])

cosmetics_nails = cosmetics.children.create(name: "ネイルケア")
cosmetics_nails.children.create([{:name=>"ネイルカラー"},{:name=>"カラージェル"},{:name=>"ネイルベースコート/トップコート"},{:name=>"ネイルアート用品"},{:name=>"ネイルパーツ"},{:name=>"ネイルチップ/
付け爪"},{:name=>"手入れ用具"},{:name=>"除光液"},{:name=>"その他"}])

cosmetics_perfumes = cosmetics.children.create(name: "香水")
cosmetics_perfumes.children.create([{:name=>"香水(女性用)"},{:name=>"香水(男性用)"},{:name=>"ユニセックス"},{:name=>"ボディミスト"},{:name=>"その他"}])

cosmetics_skins = cosmetics.children.create(name: "スキンケア/基礎化粧品")
cosmetics_skins.children.create([{:name=>"化粧水/ローション"},{:name=>"乳液/ミルク"},{:name=>"美容液"},{:name=>"フェイスクリーム"},{:name=>"洗顔料"},{:name=>"クレンジング/メイク落とし"},{:name=>"パック/フェイスマスク"},{:name=>"ジェル/ゲル"},{:name=>"ブースター/導入液"},{:name=>"アイケア"},{:name=>"リップケア"},{:name=>"トライアルセット/サンプル"},{:name=>"洗顔グッズ"},{:name=>"その他"}])

cosmetics_hears = cosmetics.children.create(name: "ヘアケア")
cosmetics_hears.children.create([{:name=>"シャンプー"},{:name=>"トリートメント"},{:name=>"コンディショナー"},{:name=>"リンス"},{:name=>"スタイリング剤"},{:name=>"カラーリング剤"},{:name=>"ブラシ"},{:name=>"その他"}])

cosmetics_bodies = cosmetics.children.create(name: "ボディケア")
cosmetics_bodies.children.create([{:name=>"オイル/クリーム"},{:name=>"ハンドクリーム"},{:name=>"ローション"},{:name=>"日焼け止め/サンオイル"},{:name=>"ボディソープ"},{:name=>"入浴剤"},{:name=>"制汗/デオドラント"},{:name=>"フットケア"},{:name=>"その他"}])

cosmetics_orals = cosmetics.children.create(name: "オーラルケア")
cosmetics_orals.children.create([{:name=>"口臭防止/エチケット用品"},{:name=>"歯ブラシ"},{:name=>"その他"}])

cosmetics_relaxes = cosmetics.children.create(name: "リラクゼーション")
cosmetics_relaxes.children.create([{:name=>"エッセンシャルオイル"},{:name=>"芳香器"},{:name=>"お香/香炉"},{:name=>"キャンドル"},{:name=>"リラクゼーショングッズ"},{:name=>"その他"}])

cosmetics_diets = cosmetics.children.create(name: "ダイエット")
cosmetics_diets.children.create([{:name=>"ダイエット食品"},{:name=>"エクササイズ用品"},{:name=>"体重計"},{:name=>"体脂肪計"},{:name=>"その他"}])

cosmetics_others = cosmetics.children.create(name: "その他")
cosmetics_others.children.create([{:name=>"健康用品"},{:name=>"看護/介護用品"},{:name=>"救急/衛生用品"},{:name=>"その他"}])

electronics_phones = electronics.children.create(name: "スマートフォン/携帯電話")
electronics_phones.children.create([{:name=>"スマートフォン本体"},{:name=>"バッテリー/充電器"},{:name=>"携帯電話本体"},{:name=>"PHS本体"},{:name=>"その他"}])

electronics_accessories = electronics.children.create(name: "スマホアクセサリー")
electronics_accessories.children.create([{:name=>"Androidケース"},{:name=>"iPhone用ケース"},{:name=>"カバー"},{:name=>"イヤホンジャック"},{:name=>"ストラップ"},{:name=>"フィルム"},{:name=>"自撮り棒"},{:name=>"その他"}])

electronics_pcs = electronics.children.create(name: "PC/タブレット")
electronics_pcs.children.create([{:name=>"タブレット"},{:name=>"ノートPC"},{:name=>"デスクトップ型PC"},{:name=>"ディスプレイ"},{:name=>"電子ブックリーダー"},{:name=>"PC周辺機器"},{:name=>"PCパーツ"},{:name=>"その他"}])

electronics_cameras = electronics.children.create(name: "カメラ")
electronics_cameras.children.create([{:name=>"デジタルカメラ"},{:name=>"ビデオカメラ"},{:name=>"レンズ(単焦点)"},{:name=>"レンズ(ズーム)"},{:name=>"フィルムカメラ"},{:name=>"防犯カメラ"},{:name=>"その他"}])

electronics_tvs = electronics.children.create(name: "テレビ/映像機器")
electronics_tvs.children.create([{:name=>"テレビ"},{:name=>"プロジェクター"},{:name=>"ブルーレイレコーダー"},{:name=>"DVDレコーダー"},{:name=>"ブルーレイプレーヤー"},{:name=>"DVDプレーヤー"},{:name=>"映像用ケーブル"},{:name=>"その他"}])

electronics_audios = electronics.children.create(name: "オーディオ機器")
electronics_audios.children.create([{:name=>"ポータブルプレイヤー"},{:name=>"イヤフォン"},{:name=>"ヘッドフォン"},{:name=>"アンプ"},{:name=>"スピーカー"},{:name=>"ケーブル/シールド"},{:name=>"ラジオ"},{:name=>"その他"}])

electronics_beauties = electronics.children.create(name: "美容/健康")
electronics_beauties.children.create([{:name=>"ヘアドライヤー"},{:name=>"ヘアアイロン"},{:name=>"美容機器"},{:name=>"電気シェーバー"},{:name=>"電動歯ブラシ"},{:name=>"その他"}])

electronics_aircons = electronics.children.create(name: "冷暖房/空調")
electronics_aircons.children.create([{:name=>"エアコン"},{:name=>"空気清浄機"},{:name=>"加湿器"},{:name=>"扇風機"},{:name=>"除湿機"},{:name=>"ファンヒーター"},{:name=>"電気ヒーター"},{:name=>"オイルヒーター"},{:name=>"ストーブ"},{:name=>"ホットカーペット"},{:name=>"こたつ"},{:name=>"電気毛布"},{:name=>"その他"}])

electronics_lifes = electronics.children.create(name: "生活家電")
electronics_lifes.children.create([{:name=>"冷蔵庫"},{:name=>"洗濯機"},{:name=>"炊飯器"},{:name=>"電子レンジ/オーブン"},{:name=>"調理機器"},{:name=>"アイロン"},{:name=>"掃除機"},{:name=>"エスプレッソマシン"},{:name=>"コーヒーメーカー"},{:name=>"衣類乾燥機"},{:name=>"その他"}])

electronics_others = electronics.children.create(name: "その他")
electronics_others.children.create([{:name=>"その他"}])



sports_golfs = sports.children.create(name: "ゴルフ")
sports_golfs.children.create([{:name=>"クラブ"},{:name=>"ウェア(男性用)"},{:name=>"ウェア(女性用)"},{:name=>"バッグ"},{:name=>"シューズ(男性用)"},{:name=>"シューズ(女性用)"},{:name=>"アクセサー"},{:name=>"その他"}])

sports_fishings = sports.children.create(name: "フィッシング")
sports_fishings.children.create([{:name=>"ロッド"},{:name=>"リール"},{:name=>"ルアー用品"},{:name=>"ウェア"},{:name=>"釣り糸/ライン"},{:name=>"その他"}])

sports_bikes = sports.children.create(name: "自転車")
sports_bikes.children.create([{:name=>"自転車本体"},{:name=>"ウェア"},{:name=>"パーツ"},{:name=>"アクセサリー"},{:name=>"バッグ"},{:name=>"工具/メンテナンス"},{:name=>"その他"}])

sports_trainings = sports.children.create(name: "トレーニング/エクササイズ")
sports_trainings.children.create([{:name=>"ランニング"},{:name=>"ウォーキング"},{:name=>"ヨガ"},{:name=>"トレーニング用品"},{:name=>"その他"}])

sports_baseballs = sports.children.create(name: "野球")
sports_baseballs.children.create([{:name=>"ウェア"},{:name=>"シューズ"},{:name=>"グローブ"},{:name=>"バット"},{:name=>"アクセサリー"},{:name=>"防具"},{:name=>"練習機器"},{:name=>"記念グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_footballs = sports.children.create(name: "サッカー/フットサル")
sports_footballs.children.create([{:name=>"ウェア"},{:name=>"シューズ"},{:name=>"ボール"},{:name=>"アクセサリー"},{:name=>"記念グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_tenises = sports.children.create(name: "テニス")
sports_tenises.children.create([{:name=>"ラケット(硬式用)"},{:name=>"ラケット(軟式用)"},{:name=>"ウェア"},{:name=>"シューズ"},{:name=>"ボール"},{:name=>"アクセサリー"},{:name=>"記念グッズ"},{:name=>"応援グッズ"},{:name=>"その他"}])

sports_bords = sports.children.create(name: "スノーボード")
sports_bords.children.create([{:name=>"ボード"},{:name=>"バインディング"},{:name=>"ブーツ(男性用)"},{:name=>"ブーツ(女性用)"},{:name=>"ブーツ(子ども用)"},{:name=>"ウェア/装備(男性用)"},{:name=>"ウェア/装備(女性用)"},{:name=>"ウェア/装備(子ども用)"},{:name=>"アクセサリー用"},{:name=>"バッグ"},{:name=>"その他"}])

sports_skies = sports.children.create(name: "スキー")
sports_skies.children.create([{:name=>"板"},{:name=>"ブーツ(男性用)"},{:name=>"ブーツ(女性用)"},{:name=>"ブーツ(子ども用)"},{:name=>"ビンディング"},{:name=>"ウェア(男性用)"},{:name=>"ウェア(女性用)"},{:name=>"ウェア(子ども用)"},{:name=>"ストック"},{:name=>"その他"}])

sports_minors = sports.children.create(name: "その他スポーツ")
sports_minors.children.create([{:name=>"ダンス/バレエ"},{:name=>"サーフィン"},{:name=>"バスケットボール"},{:name=>"バドミントン"},{:name=>"バレーボール"},{:name=>"スケートボード"},{:name=>"陸上競技"},{:name=>"ラグビー"},{:name=>"アメリカンフットボール"},{:name=>"ボクシング"},{:name=>"ボウリング"},{:name=>"その他"}])

sports_outdoors = sports.children.create(name: "アウトドア")
sports_outdoors.children.create([{:name=>"テント/タープ"},{:name=>"ライト/ランタン"},{:name=>"寝袋/寝具"},{:name=>"テーブル/チェア"},{:name=>"ストーブ/コンロ"},{:name=>"調理器具"},{:name=>"食器"},{:name=>"登山用品"},{:name=>"その他"}])

sports_others = sports.children.create(name: "その他")
sports_others.children.create([{:name=>"旅行用品"},{:name=>"その他"}])



handmades_accessories = handmades.children.create(name: "アクセサリー(女性用)")
handmades_accessories.children.create([{:name=>"ピアス"},{:name=>"イヤリング"},{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"リング"},{:name=>"チャーム"},{:name=>"ヘアゴム"},{:name=>"アンクレット"},{:name=>"その他"}])

handmades_fashions = handmades.children.create(name: "ファッション/小物")
handmades_fashions.children.create([{:name=>"バッグ(女性用)"},{:name=>"バッグ(男性用)"},{:name=>"財布(女性用)"},{:name=>"財布(男性用)"},{:name=>"ファッション雑貨"},{:name=>"その他"}])

handmades_watches = handmades.children.create(name: "アクセサリー/時計")
handmades_watches.children.create([{:name=>"アクセサリー(男性用)"},{:name=>"時計(女性用)"},{:name=>"時計(男性用)"},{:name=>"その他"}])

handmades_interiors = handmades.children.create(name: "日用品/インテリア")
handmades_interiors.children.create([{:name=>"キッチン用品"},{:name=>"家具"},{:name=>"文房具"},{:name=>"アート/写真"},{:name=>"アロマ/キャンドル"},{:name=>"フラワー/ガーデン"},{:name=>"その他"}])

handmades_hobbies = handmades.children.create(name: "趣味/おもちゃ")
handmades_hobbies.children.create([{:name=>"クラフト/布製品"},{:name=>"おもちゃ/人形"},{:name=>"その他"}])

handmades_babies = handmades.children.create(name: "キッズ/ベビー")
handmades_babies.children.create([{:name=>"ファッション雑貨"},{:name=>"スタイ/よだれかけ"},{:name=>"外出用品"},{:name=>"ネームタグ"},{:name=>"その他"}])

handmades_parts = handmades.children.create(name: "素材/材料")
handmades_parts.children.create([{:name=>"各種パーツ"},{:name=>"生地/糸"},{:name=>"型紙/パターン"},{:name=>"その他"}])

handmades_creaters = handmades.children.create(name: "二次創作物")
handmades_creaters.children.create([{:name=>"Ingress"},{:name=>"クリエイターズ宇宙兄弟"}])



tickets_misics = tickets.children.create(name: "音楽")
tickets_misics.children.create([{:name=>"男性アイドル"},{:name=>"女性アイドル"},{:name=>"韓流"},{:name=>"国内アーティスト"},{:name=>"海外アーティスト"},{:name=>"音楽フェス"},{:name=>"声優/アニメ"},{:name=>"その他"}])

tickets_sports = tickets.children.create(name: "スポーツ")
tickets_sports.children.create([{:name=>"サッカー"},{:name=>"野球"},{:name=>"テニス"},{:name=>"格闘技/プロレス"},{:name=>"相撲/武道"},{:name=>"ゴルフ"},{:name=>"バレーボール"},{:name=>"バスケットボール"},{:name=>"モータースポーツ"},{:name=>"ウィンタースポーツ"},{:name=>"その他"}])

tickets_dramas = tickets.children.create(name: "演劇/芸能")
tickets_dramas.children.create([{:name=>"ミュージカル"},{:name=>"演劇"},{:name=>"伝統芸能"},{:name=>"落語"},{:name=>"お笑い"},{:name=>"オペラ"},{:name=>"サーカス"},{:name=>"バレエ"},{:name=>"その他"}])

tickets_events = tickets.children.create(name: "イベント")
tickets_events.children.create([{:name=>"声優/アニメ"},{:name=>"キッズ/ファミリー"},{:name=>"トークショー/講演会"},{:name=>"その他"}])

tickets_movies = tickets.children.create(name: "映画")
tickets_movies.children.create([{:name=>"邦画"},{:name=>"洋画"},{:name=>"その他"}])

tickets_parks = tickets.children.create(name: "施設利用券")
tickets_parks.children.create([{:name=>"遊園地/テーマパーク"},{:name=>"美術館/博物館"},{:name=>"スキー場"},{:name=>"ゴルフ場"},{:name=>"フィットネスクラブ"},{:name=>"プール"},{:name=>"ボウリング場"},{:name=>"水族館"},{:name=>"動物園"},{:name=>"その他"}])

tickets_cupons = tickets.children.create(name: "優待券/割引券")
tickets_cupons.children.create([{:name=>"ショッピング"},{:name=>"レストラン/食事券"},{:name=>"フード/ドリンク券"},{:name=>"宿泊券"},{:name=>"その他"}])



mobiles_cars = mobiles.children.create(name: "自動車本体")
mobiles_cars.children.create([{:name=>"国内自動車本体"},{:name=>"外国自動車本体"}])

mobiles_car_tires = mobiles.children.create(name: "自動車タイヤ/ホイールセット")
mobiles_car_tires.children.create([{:name=>"タイヤ/ホイールセット"},{:name=>"タイヤ"},{:name=>"ホイール"},{:name=>"その他"}])

mobiles_car_parts = mobiles.children.create(name: "自動車パーツ")
mobiles_car_parts.children.create([{:name=>"サスペンション"},{:name=>"ブレーキ"},{:name=>"外装,エアロパーツ"},{:name=>"内装品,シート"},{:name=>"ステアリング"},{:name=>"マフラー・排気系"},{:name=>"エンジン,過給器,冷却装置"},{:name=>"クラッチ,ミッション,駆動系"},{:name=>"電飾品"},{:name=>"補強パーツ"},{:name=>"汎用パーツ"},{:name=>"外国自動車用パーツ"},{:name=>"その他"}])

mobiles_car_accessories = mobiles.children.create(name: "自動車アクセサリー")
mobiles_car_accessories.children.create([{:name=>"車内アクセサリー"},{:name=>"カーナビ"},{:name=>"カーオーディオ"},{:name=>"車外アクセサリー"},{:name=>"メンテナンス用品"},{:name=>"チャイルドシート"},{:name=>"ドライブレコーダー"},{:name=>"レーダー探知機"},{:name=>"カタログ/マニュアル"},{:name=>"セキュリティ"},{:name=>"ETC"},{:name=>"その他"}])

mobiles_bikes = mobiles.children.create(name: "オートバイ車体")

mobiles_bike_parts = mobiles.children.create(name: "オートバイパーツ")
mobiles_bike_parts.children.create([{:name=>"タイヤ"},{:name=>"マフラー"},{:name=>"エンジン,冷却装置"},{:name=>"カウル,フェンダー,外装"},{:name=>"サスペンション"},{:name=>"ホイール"},{:name=>"シート"},{:name=>"ブレーキ"},{:name=>"タンク"},{:name=>"ライト,ウィンカー"},{:name=>"チェーン,スプロケット,駆動系"},{:name=>"メーター"},{:name=>"電装系"},{:name=>"ミラー"},{:name=>"外国オートバイ用パーツ"},{:name=>"その他"}])

mobiles_bike_accessories = mobiles.children.create(name: "オートバイアクセサリー")
mobiles_bike_accessories.children.create([{:name=>"ヘルメット/シールド"},{:name=>"バイクウェア/装備"},{:name=>"アクセサリー"},{:name=>"メンテナンス"},{:name=>"カタログ/マニュアル"},{:name=>"その他"}])



others_sets = others.children.create(name: "まとめ売り")

others_pets = others.children.create(name: "ペット用品")
others_pets.children.create([{:name=>"ペットフード"},{:name=>"犬用品"},{:name=>"猫用品"},{:name=>"魚用品/水草"},{:name=>"小動物用品"},{:name=>"爬虫類/両生類用品"},{:name=>"かご/おり"},{:name=>"鳥用品"},{:name=>"虫類用品"},{:name=>"その他"}])


others_foods = others.children.create(name: "食品")
others_foods.children.create([{:name=>"菓子"},{:name=>"米"},{:name=>"野菜"},{:name=>"果物"},{:name=>"調味料"},{:name=>"魚介類(加工食品)"},{:name=>"肉類(加工食品)"},{:name=>"その他 加工食品"},{:name=>"その他"}])

others_drinks = others.children.create(name: "飲料/酒")
others_drinks.children.create([{:name=>"コーヒー"},{:name=>"ソフトドリンク"},{:name=>"ミネラルウォーター"},{:name=>"茶"},{:name=>"ウイスキー"},{:name=>"ワイン"},{:name=>"ブランデー"},{:name=>"焼酎"},{:name=>"日本酒"},{:name=>"ビール,発泡酒"},{:name=>"その他"}])

others_goods = others.children.create(name: "日用品/生活雑貨/旅行")
others_goods.children.create([{:name=>"タオル/バス用品"},{:name=>"日用品/生活雑貨"},{:name=>"洗剤/柔軟剤"},{:name=>"旅行用品"},{:name=>"防災関連グッズ"},{:name=>"その他"}])

others_antiques = others.children.create(name: "アンティーク/コレクション")
others_antiques.children.create([{:name=>"雑貨"},{:name=>"工芸品"},{:name=>"家具"},{:name=>"印刷物"},{:name=>"その他"}])

others_stationeries = others.children.create(name: "文房具/事務用品")
others_stationeries.children.create([{:name=>"筆記用具"},{:name=>"ノート/メモ帳"},{:name=>"テープ/マスキングテープ"},{:name=>"カレンダー/スケジュール"},{:name=>"アルバム/スクラップ"},{:name=>"ファイル/バインダー"},{:name=>"はさみ/カッター"},{:name=>"カードホルダー/名刺管理"},{:name=>"のり/ホッチキス"},{:name=>"その他"}])

others_offices = others.children.create(name: "事務/店舗用品")
others_offices.children.create([{:name=>"オフィス用品一般"},{:name=>"オフィス家具"},{:name=>"店舗用品"},{:name=>"OA機器"},{:name=>"ラッピング/包装"},{:name=>"その他"}])

others_others = others.children.create(name: "その他")
