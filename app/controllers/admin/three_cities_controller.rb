class Admin::ThreeCitiesController < Admin::MainController
  layout 'admin'

  def index
    @jobs = ThreeCity.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = ThreeCity.new
  end

  # 添加图文按钮
  def function_index
  end

  def create
    @job = ThreeCity.new(
        :title => params[:threeCity][:title],
        :question_category_id => params[:threeCity][:question_category_id]
    )
    if @job.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_citys_path and return
    else
      flash[:error_msg] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  #   删除
  def destroy
    @job = ThreeCity.find(params[:id])
    flash[:error_msg] = @job.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_citys_path and return
  end
end
