class CitiesController < ApplicationController
  def show
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 旅游路线
    @hotline = Trave.find params[:id]
  end

  # 香港游
  def xianggang
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)
  end

  # 澳门游
  def aomen
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 101}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 港澳游
  def gangao
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 102}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end
  # 非洲
  def feizhou
    # 最新公告

    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 103}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门出境
  def remenchujing
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门海岛
  def remenhaidao
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 2}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 东南亚
  def dongnanya
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 3}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 亚洲
  def yazhou
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 4}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 欧洲
  def ouzhou
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 5}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 美洲
  def meizhou
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 6}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 中东非洲
  def zhongdongfeizhou
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 7}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 澳洲
  def aozhou
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 8}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门国内
  def remenguonei
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华南
  def huanan
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 10}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 西南
  def xinan
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 11}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华东
  def huadong
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 12}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华中
  def huazhong
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 13}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华北
  def huabei
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 14}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 西部
  def xibu
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 15}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 东北
  def dongbei
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 16}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 长春
  def changchun
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(30)
    @travels = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end
end
