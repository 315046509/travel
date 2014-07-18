class Hotel < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :title, :presence => {:message => "城市名称不能为空"}

  QUESTION_CATEGORYS = [["未分类", 0], ["长春", 1], ["深圳", 2], ["广州", 3], ["三亚", 4], ["马来西亚", 5]]

  has_many :occupancy_hotels

  def Hotel.question_category_name(category_id)
    QUESTION_CATEGORYS.each do |item|
      return item[0] if item[1] == category_id
    end
  end

  def question_category_name
    Hotel.question_category_name(self.question_category_id)
  end
end
