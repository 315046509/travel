class DestinationFiveController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    @hl = Hotline.order_ct_desc.page(params[:page]).per(6)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def user_create
    company_name = params[:customized][:company_name]
    name = params[:customized][:name]
    tell = params[:customized][:tell]
    caltel = params[:customized][:caltel]

    account = Customized.new(
        :company_name => company_name,
        :name => name,
        :tell => tell,
        :caltel => caltel

    )
    if account.save
      flash[:note] = "提交成功"
      redirect_to destination_five_index_path and return
    else
      redirect_to :back and return
    end
  end

  def show
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 公司旅游
    @hotline = Hotline.find params[:id]
  end
end
