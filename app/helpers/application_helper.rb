module ApplicationHelper
  def max_width
    "mw-xl"
  end
  def full_title(page_title = '')
        team_project_48 = "チームポートフォリオ　共同開発"
        if page_title.empty?
            team_project_48
        else
            "#{ page_title } | #{ team_project_48 }"
        end
    end
end