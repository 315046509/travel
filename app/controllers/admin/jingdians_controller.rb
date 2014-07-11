class Admin::JingdiansController < Admin::MainController
  layout 'admin'

  def index
    @jobs = Jingdian.where(:one_city_id => params[:one_city_id]).order("id desc").page(params[:page]).per(10)
  end

  def new
    @job = Jingdian.new
  end

  def create
    @job = Jingdian.new(
        :title => params[:jingdian][:title],
        :description => params[:jingdian][:description],
        :price => params[:jingdian][:price],
        :one_city_id => params[:one_city_id]
    )
    if @job.save
      flash[:note] = "创建成功"
      redirect_to admin_one_city_jingdians_path and return
    else
      flash[:note] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  #   删除
  def destroy
    @job = Jingdian.find(params[:id])
    flash[:note] = @job.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_one_city_jingdians_path and return
  end
end
