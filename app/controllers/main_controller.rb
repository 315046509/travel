class MainController < ApplicationController
  protect_from_forgery :except => :login_check
  # 首页
  def index
    # 最新公告
    @jobs = Announcement.order_ct_desc.page(params[:page]).per(1)
  end

  # 登录页
  def login;
  end

  # 登录验证
  def login_check
    mobile = params[:mobile]
    passwd = params[:passwd]
    if Member.valid_use_login_params(mobile, passwd)
      member = Member.login_check(mobile, passwd)
      if member.blank?
        flash[:error_msg] = "登陆失败，请检查手机号或密码是否有误！"
        redirect_to :back and return
      else
        do_login(member)
        flash[:error_msg] = "登陆成功"
        redirect_to root_path and return
      end
    else
      flash[:error_msg] = "请填写正确的手机号和密码！"
      redirect_to :back and return
    end
  end

  # 注册页
  def signup
    @member = Member.new
  end

  # 用户注册提交
  def user_create
    name = params[:member][:name]
    mobile = params[:member][:mobile]
    email = params[:member][:email]
    passwd = params[:member][:passwd]
    passwdag = params[:member][:passwdag]
    @member = Member.new(:name => name,
                         :mobile => mobile,
                         :email => email,
                         :passwd => Member.encrypt_password(passwd)
    )
    if @member.save
      #成功
      member = Member.login_check(mobile, passwd)
      if @member
        do_login(member)
        flash[:error_msg] = "登陆成功"
        redirect_to root_path and return
      else
        redirect_to :back and return
      end
    else
      flash[:error_msg] = "您所注册的手机号存在"
      redirect_to :back and return
    end
  end

#验证登录名
  def check_login
    mobile = params[:member][:mobile]
    render :text => Member.check_login_exist(mobile) ? "false" : "true"
  end

# 注销
  def logout
    session[:member_id] = nil
    redirect_to root_path and return
  end

  protected

# 登录
  def do_login(member)
    session[:member_id] = member.id
  end
end
