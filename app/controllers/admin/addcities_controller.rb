class Admin::AddcitiesController < Admin::MainController
  layout 'admin'

  def index
    @jobs = Addcity.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = Addcity.new
  end

  def create
    @job = Addcity.new(
        :title => params[:addcity][:title],
        :question_category_id => params[:addcity][:question_category_id]
    )
    if @job.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_addcities_path and return
    else
      flash[:error_msg] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  def edit
    @addcity = Addcity.find(params[:id])
  end

  def update
    @addcity = Addcity.find(params[:id])
    update_category = @addcity.update_attributes(
        :title => params[:addcity][:title]
    )
    if update_category
      respond_to do |category|
        category.html {
          redirect_to admin_addcities_path and return
        }
      end
    end
  end

  # 旅游路线列表
  def travel
    @travels = Trave.order_ct_desc.page(params[:page]).per(10)
  end

  # 添加旅游路线
  def add_travel
    @travel = Trave.new
  end

  # 添加旅游路线
  def create_travel
    if request.post?
      if params[:trave]
        avatar = params[:trave][:avatar]
        avatar1 = params[:trave][:avatar1]
        title = params[:trave][:title]
        description = params[:trave][:description]
        price = params[:trave][:price]
        xingcheng = params[:trave][:xingcheng]
        feiyongshuoming = params[:trave][:feiyongshuoming]
        wenxintishi = params[:trave][:wenxintishi]
        yudingtishi = params[:trave][:yudingtishi]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !avatar1.blank? && !title.blank? && !description.blank? && !price.blank? && !xingcheng.blank? && !feiyongshuoming.blank? && !wenxintishi.blank? && !yudingtishi.blank?
          rc = Trave.create(
              :avatar => avatar,
              :avatar1 => avatar1,
              :title => title,
              :description => description,
              :price => price,
              :xingcheng => xingcheng,
              :feiyongshuoming => feiyongshuoming,
              :wenxintishi => wenxintishi,
              :yudingtishi => yudingtishi
          )
          if rc.valid?
          else
            flash[:note]="创建成功！"
            redirect_to :back and return
          end
          redirect_to travel_admin_addcity_path and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
  end

  def show_travel
    @hotline = Trave.find(params[:id])
  end

  # delete
  def destroy
    @resource = Trave.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to travel_admin_addcity_path
        return
      end
    end
  end
end