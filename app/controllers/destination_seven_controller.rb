class DestinationSevenController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 港澳旅游
    @category_1_name = City.question_category_name(1)
    @category_1_city = City.where({:question_category_id => 1}, "title <> ''")

    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 热门未知
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend43 = Recommend.where(:city_id => 43).order("id desc").page(params[:page]).per(5)
    @recommend44 = Recommend.where(:city_id => 44).order("id desc").page(params[:page]).per(5)
    @recommend45 = Recommend.where(:city_id => 45).order("id desc").page(params[:page]).per(5)
    @recommend46 = Recommend.where(:city_id => 46).order("id desc").page(params[:page]).per(5)
    @recommend47 = Recommend.where(:city_id => 47).order("id desc").page(params[:page]).per(5)
    @recommend48 = Recommend.where(:city_id => 48).order("id desc").page(params[:page]).per(5)
    @recommend49 = Recommend.where(:city_id => 49).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan43 = Gentuan.where(:city_id => 43).order("id desc").page(params[:page]).per(5)
    @gentuan44 = Gentuan.where(:city_id => 44).order("id desc").page(params[:page]).per(5)
    @gentuan45 = Gentuan.where(:city_id => 45).order("id desc").page(params[:page]).per(5)
    @gentuan46 = Gentuan.where(:city_id => 46).order("id desc").page(params[:page]).per(5)
    @gentuan47 = Gentuan.where(:city_id => 47).order("id desc").page(params[:page]).per(5)
    @gentuan48 = Gentuan.where(:city_id => 48).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline43 = Freeline.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @freeline44 = Freeline.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @freeline45 = Freeline.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @freeline46 = Freeline.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @freeline47 = Freeline.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
  end

  def gangao
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Recommend.find params[:id]
    # 热门显示页列表
    @hotdoors = Recommend.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def gentuan
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Gentuan.find params[:id]
    # 热门显示页列表
    @hotdoors = Gentuan.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def ziyouxing
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Freeline.find params[:id]
    # 热门显示页列表
    @hotdoors = Freeline.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end
end
