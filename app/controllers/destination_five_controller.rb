class DestinationFiveController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
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
end
