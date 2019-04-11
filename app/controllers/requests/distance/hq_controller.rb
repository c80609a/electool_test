# frozen_string_literal: true

module Requests
  module Distance
    class HqController < ApplicationController
      def index
        hq_distance = DistanceCalculator
                      .new(
                        address: params[:address],
                        destination: params[:destination]
                      ).calculate
        render json: { distance: hq_distance }
      end
    end
  end
end
