class ApplicationController < ActionController::Base
    def show
        @articles = Article.all
    end
end
