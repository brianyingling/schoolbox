module ApplicationHelper
  def teacher_nav
    nav = ""
    if @auth.is_a?(Teacher)
      nav += "<li><a>Courses</a></li>"
      nav += "<li><a>Classes</a></li>"
      nav += "<li><a>Posts</a></li>"
      nav += "<li><a>Assignments</a></li>"
    end
    nav
  end
end
