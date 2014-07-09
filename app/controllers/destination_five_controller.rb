class DestinationFiveController < ApplicationController
  # 首页
  def index
    # 最新公告
    @jobs = Announcement.order_ct_desc.page(params[:page]).per(1)
  end
end
