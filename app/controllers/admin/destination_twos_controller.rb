class Admin::DestinationTwosController < ApplicationController
  layout 'admin'

  def index
  end

  # 轮播列表
  def tejia
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)
  end

  # 轮播new
  def new_tejia
    @lunbo = Tejia.new
  end

  # 轮播create
  def create_tejia
    if request.post?
      if params[:tejia]
        avatar = params[:tejia][:avatar]
        title = params[:tejia][:title]
        description = params[:tejia][:description]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !title.blank? && !description.blank?
          rc = Tejia.create(:avatar => avatar, :title => title, :description => description)
          if rc.valid?
          else
            msg = ""
            rc.errors.full_messages.each { |error| msg+= error }
            flash[:note]= msg
            redirect_to :back and return
          end
          redirect_to lunbo_admin_destination_twos_path and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back and return
        end
      end
    end
  end

  # 轮播delete
  def delett_tejia
    @lunbo = Tejia.find params[:id]
    Tejia.deletefile(@lunbo.id)
    @lunbo.destroy
    redirect_to lunbo_admin_destination_twos_path and return
  end

end
