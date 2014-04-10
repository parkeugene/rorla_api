class EventsController < ApplicationController
  # 임시 테스트용
  skip_before_filter :authenticate_user!, :only => [:sync]
  def sync
    render nothing:true, status:200
  end
end
