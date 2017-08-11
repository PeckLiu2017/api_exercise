class Api::V1::TrainsController < ApiController
  def index
    @trains = Train.paginate( :page => params[:page] )
    # move to Jdbuilder
    # render :json => {
    #   :data => @trains.map{ |train|
    #     { :number => train.number,
    #         :train_url => api_v1_train_url(train.number)
    #     }
    #   }
    # }
  end

  def show
    @train = Train.find_by_number!( params[:train_number] )

    # 移至Jbuilder文件
    # render :json => {
    #   :number => @train.number,
    #   :available_seats => @train.available_seats
    # }
  end

end
