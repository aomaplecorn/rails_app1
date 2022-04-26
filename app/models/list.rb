class List < ApplicationRecord
  has_one_attached :image
# validates=検証、presence＝存在（true=データ有り、false=無し）
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
