# frozen_string_literal: true

module Requests
  module Distance
    class HqController < ApplicationController
      def index
        hq_distance = 0
        render json: { distance: hq_distance }
      end
    end
  end
end
