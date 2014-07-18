class DestinationFiveController < ApplicationController
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
    @recommend29 = Recommend.where(:city_id => 29).order("id desc").page(params[:page]).per(5)
    @recommend30 = Recommend.where(:city_id => 30).order("id desc").page(params[:page]).per(5)
    @recommend31 = Recommend.where(:city_id => 31).order("id desc").page(params[:page]).per(5)
    @recommend32 = Recommend.where(:city_id => 32).order("id desc").page(params[:page]).per(5)
    @recommend33 = Recommend.where(:city_id => 33).order("id desc").page(params[:page]).per(5)
    @recommend34 = Recommend.where(:city_id => 34).order("id desc").page(params[:page]).per(5)
    @recommend35 = Recommend.where(:city_id => 35).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan29 = Gentuan.where(:city_id => 29).order("id desc").page(params[:page]).per(5)
    @gentuan30 = Gentuan.where(:city_id => 30).order("id desc").page(params[:page]).per(5)
    @gentuan31 = Gentuan.where(:city_id => 31).order("id desc").page(params[:page]).per(5)
    @gentuan32 = Gentuan.where(:city_id => 32).order("id desc").page(params[:page]).per(5)
    @gentuan33 = Gentuan.where(:city_id => 33).order("id desc").page(params[:page]).per(5)
    @gentuan34 = Gentuan.where(:city_id => 34).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline29 = Freeline.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @freeline30 = Freeline.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @freeline31 = Freeline.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @freeline32 = Freeline.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @freeline33 = Freeline.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
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
