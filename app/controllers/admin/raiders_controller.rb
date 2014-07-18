class Admin::RaidersController < Admin::MainController
  layout 'admin'

  def index
    @jobs = Raider.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = Raider.new
  end

  def create
    @job = Raider.new(
        :title => params[:raider][:title],
        :description => params[:raider][:description],
        :city_id => params[:city_id]
    )
    if @job.save
      flash[:note] = "创建成功"
      redirect_to admin_raiders_path and return
    else
      flash[:note] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  #   删除
  def destroy
    @job = Raider.find(params[:id])
    flash[:note] = @job.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_raiders_path and return
  end
end