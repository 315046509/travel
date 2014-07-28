class Admin::CompaniesController < Admin::MainController
  layout 'admin'

  def index
  end

  def new
  end

  def edit
  end

  # 热门路线
  def hotline
    @hl = Hotline.order_ct_desc.page(params[:page]).per(10)
  end

  # 定制包团
  def customized_packages
    @cp = Customized.order_ct_desc.page(params[:page]).per(10)
  end
end
