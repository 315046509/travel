class Admin::CompaniesController < Admin::MainController
  layout 'admin'

  def index
  end

  def new
    @hotline = Hotline.new
  end

  def show
    @hotline = Hotline.find params[:id]
  end

  def create
    if request.post?
      if params[:hotline]
        avatar = params[:hotline][:avatar]
        title = params[:hotline][:title]
        description = params[:hotline][:description]
        price = params[:hotline][:price]
        xingcheng = params[:hotline][:xingcheng]
        feiyongshuoming = params[:hotline][:feiyongshuoming]
        wenxintishi = params[:hotline][:wenxintishi]
        yudingtishi = params[:hotline][:yudingtishi]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !title.blank? && !description.blank? && !price.blank? && !xingcheng.blank? && !feiyongshuoming.blank? && !wenxintishi.blank? && !yudingtishi.blank?
          rc = Hotline.create(
              :avatar => avatar,
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
          redirect_to hotline_admin_companies_path and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
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
