class Prefecture < ActiveHash::Base
  self.data = [
      {id: 1, name: '1〜2日以内に発送'}, {id: 2, name: '2〜3日以内に発送'}, {id: 3, name: '4〜7日以内に発送'}
  ]
end