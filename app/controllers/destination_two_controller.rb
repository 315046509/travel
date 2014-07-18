class DestinationTwoController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 出境旅游
    @category_2_name = City.question_category_name(2)
    @category_2_city = City.where({:question_category_id => 2}, "title <> ''")

    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 热门出境
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend8 = Recommend.where(:city_id => 8).order("id desc").page(params[:page]).per(5)
    @recommend9 = Recommend.where(:city_id => 9).order("id desc").page(params[:page]).per(5)
    @recommend10 = Recommend.where(:city_id => 10).order("id desc").page(params[:page]).per(5)
    @recommend11 = Recommend.where(:city_id => 11).order("id desc").page(params[:page]).per(5)
    @recommend12 = Recommend.where(:city_id => 12).order("id desc").page(params[:page]).per(5)
    @recommend13 = Recommend.where(:city_id => 13).order("id desc").page(params[:page]).per(5)
    @recommend14 = Recommend.where(:city_id => 14).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan8 = Gentuan.where(:city_id => 8).order("id desc").page(params[:page]).per(5)
    @gentuan9 = Gentuan.where(:city_id => 9).order("id desc").page(params[:page]).per(5)
    @gentuan10 = Gentuan.where(:city_id => 10).order("id desc").page(params[:page]).per(5)
    @gentuan11 = Gentuan.where(:city_id => 11).order("id desc").page(params[:page]).per(5)
    @gentuan12 = Gentuan.where(:city_id => 12).order("id desc").page(params[:page]).per(5)
    @gentuan13 = Gentuan.where(:city_id => 13).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline8 = Freeline.where(:city_id => 8).order("id desc").page(params[:page]).per(6)
    @freeline9 = Freeline.where(:city_id => 9).order("id desc").page(params[:page]).per(6)
    @freeline10 = Freeline.where(:city_id => 10).order("id desc").page(params[:page]).per(6)
    @freeline11 = Freeline.where(:city_id => 11).order("id desc").page(params[:page]).per(6)
    @freeline12 = Freeline.where(:city_id => 12).order("id desc").page(params[:page]).per(6)
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
