class Hotline < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :company_name, :presence => {:message => "公司名称不能为空"}
end
