module AngularJs
  class TestsController < ActionController::Base
    def index
      @angular_tests = Dir[Rails.root.join('spec', 'angular', '**', '*_spec.js*')].map do |file|
        file.gsub(/.*\/angular\//,'')
      end
    end
  end
end
