class DestinationSixController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    @hl = Taiguo.order_ct_desc.page(params[:page]).per(12)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def show
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 公司旅游
    @hotline = Taiguo.find params[:id]
  end
end
