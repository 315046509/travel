class DestinationFourController < ApplicationController
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

    # 热门周边
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend22 = Recommend.where(:city_id => 22).order("id desc").page(params[:page]).per(5)
    @recommend23 = Recommend.where(:city_id => 23).order("id desc").page(params[:page]).per(5)
    @recommend24 = Recommend.where(:city_id => 24).order("id desc").page(params[:page]).per(5)
    @recommend25 = Recommend.where(:city_id => 25).order("id desc").page(params[:page]).per(5)
    @recommend26 = Recommend.where(:city_id => 26).order("id desc").page(params[:page]).per(5)
    @recommend27 = Recommend.where(:city_id => 27).order("id desc").page(params[:page]).per(5)
    @recommend28 = Recommend.where(:city_id => 28).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan22 = Gentuan.where(:city_id => 22).order("id desc").page(params[:page]).per(5)
    @gentuan23 = Gentuan.where(:city_id => 23).order("id desc").page(params[:page]).per(5)
    @gentuan24 = Gentuan.where(:city_id => 24).order("id desc").page(params[:page]).per(5)
    @gentuan25 = Gentuan.where(:city_id => 25).order("id desc").page(params[:page]).per(5)
    @gentuan26 = Gentuan.where(:city_id => 26).order("id desc").page(params[:page]).per(5)
    @gentuan27 = Gentuan.where(:city_id => 27).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline22 = Freeline.where(:city_id => 22).order("id desc").page(params[:page]).per(6)
    @freeline23 = Freeline.where(:city_id => 23).order("id desc").page(params[:page]).per(6)
    @freeline24 = Freeline.where(:city_id => 24).order("id desc").page(params[:page]).per(6)
    @freeline25 = Freeline.where(:city_id => 25).order("id desc").page(params[:page]).per(6)
    @freeline26 = Freeline.where(:city_id => 26).order("id desc").page(params[:page]).per(6)
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
