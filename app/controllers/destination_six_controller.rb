class DestinationSixController < ApplicationController
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
    @recommend36 = Recommend.where(:city_id => 36).order("id desc").page(params[:page]).per(5)
    @recommend37 = Recommend.where(:city_id => 37).order("id desc").page(params[:page]).per(5)
    @recommend38 = Recommend.where(:city_id => 38).order("id desc").page(params[:page]).per(5)
    @recommend39 = Recommend.where(:city_id => 39).order("id desc").page(params[:page]).per(5)
    @recommend40 = Recommend.where(:city_id => 40).order("id desc").page(params[:page]).per(5)
    @recommend41 = Recommend.where(:city_id => 41).order("id desc").page(params[:page]).per(5)
    @recommend42 = Recommend.where(:city_id => 42).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan36 = Gentuan.where(:city_id => 36).order("id desc").page(params[:page]).per(5)
    @gentuan37 = Gentuan.where(:city_id => 37).order("id desc").page(params[:page]).per(5)
    @gentuan38 = Gentuan.where(:city_id => 38).order("id desc").page(params[:page]).per(5)
    @gentuan39 = Gentuan.where(:city_id => 39).order("id desc").page(params[:page]).per(5)
    @gentuan40 = Gentuan.where(:city_id => 40).order("id desc").page(params[:page]).per(5)
    @gentuan41 = Gentuan.where(:city_id => 41).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline36 = Freeline.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @freeline37 = Freeline.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @freeline38 = Freeline.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @freeline39 = Freeline.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @freeline40 = Freeline.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
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
