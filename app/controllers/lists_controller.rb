class ListsController < ApplicationController
  #------------------------------------------------------new
  def new
    # @hello = "Hello"
    @list = List.new
  end
#------------------------------------------------------create
  def create
    #1.&2.データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    #3.データをデータベースに保存するためのsaveメソッド実行
    list.save
    #4.トップ画面へリダイレクト
    redirect_to list_path(list.id)
  end
#------------------------------------------------------index
  def index
    @lists = List.all
  end
#------------------------------------------------------show
  def show
    @list = List.find(params[:id])
  end
#------------------------------------------------------edit
  def edit
    @list = List.find(params[:id])
  end
#------------------------------------------------------private
  private
    #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title,:body)
  end
end
