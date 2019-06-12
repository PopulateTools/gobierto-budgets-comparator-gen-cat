module GobiertoBudgets
  class PagesController < GobiertoBudgets::ApplicationController

    caches_page :home, :ranking

    def home
    end

    def about
    end

    def pro
    end

    def faq
    end

    def legal_cookies
    end

    def legal_legal
    end

    def legal_privacy
    end

    def en
    end

    def request_access
      render layout: false
    end

    def ranking
    end

    def map
      @year = params[:year].to_i
      unless GobiertoBudgets::SearchEngineConfiguration::Year.all.include?(@year)
        redirect_to gobierto_budgets_map_path(year: GobiertoBudgets::SearchEngineConfiguration::Year.last) and return false
      end
    end

  end
end
