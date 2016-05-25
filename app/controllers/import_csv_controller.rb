class ImportCsvController < ApplicationController
  def index
    render :json => {'msg': 'hello world'}
  end
  def import
    # broker = params[:broker]
    trades = Trade.create_from_csv(params[:file])
    logger.info('import req recieved')
    render :json => trades
  end
end