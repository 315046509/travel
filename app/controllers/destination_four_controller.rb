class DestinationFourController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 城市
    @category_1_name = City.question_category_name(1)
    @category_1_city = City.where({:question_category_id => 1}, "title <> ''")
    @category_2_name = City.question_category_name(2)
    @category_2_city = City.where({:question_category_id => 2}, "title <> ''")
    @category_3_name = City.question_category_name(3)
    @category_3_city = City.where({:question_category_id => 3}, "title <> ''")

    # 攻略
    @jobs = Raider.order_ct_desc.page(params[:page]).per(9)

    # 推荐
    @recommend1 = Recommend.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @recommend2 = Recommend.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @recommend3 = Recommend.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @recommend4 = Recommend.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @recommend5 = Recommend.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
    @recommend6 = Recommend.where(:city_id => 6).order("id desc").page(params[:page]).per(6)
    @recommend7 = Recommend.where(:city_id => 7).order("id desc").page(params[:page]).per(6)
    @recommend8 = Recommend.where(:city_id => 8).order("id desc").page(params[:page]).per(6)
    # 跟团
    @gentuan1 = Gentuan.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @gentuan2 = Gentuan.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @gentuan3 = Gentuan.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @gentuan4 = Gentuan.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @gentuan5 = Gentuan.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
    @gentuan6 = Gentuan.where(:city_id => 6).order("id desc").page(params[:page]).per(6)
    # 自由行
    @freeline1 = Freeline.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @freeline2 = Freeline.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @freeline3 = Freeline.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @freeline4 = Freeline.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @freeline5 = Freeline.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
  end
end
