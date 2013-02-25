#!/usr/bin/env ruby
# encoding: utf-8

class PrelaunchSubscribersController < ApplicationController
  def new
    @subscriber = PrelaunchSubscriber.new
  end

  def create
    @subscriber = PrelaunchSubscriber.new(params[:prelaunch_subscriber])
    if @subscriber.save
      flash[:success] = I18n.t('subscriber_success_message')
    end
    redirect_to root_path
  end
end
