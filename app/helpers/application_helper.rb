module ApplicationHelper
  def teacher_nav
    nav = ""
    if @auth.is_a?(Teacher)
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Courses</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li><a href='#' class=''>Add</a></li>"
          nav += "<li><a href='#' class=''>Edit</a></li>"
          nav += "<li><a href='#' class=''>View</a></li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Classes</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li><a href='#' class=''>Add</a></li>"
          nav += "<li><a href='#' class=''>Edit</a></li>"
          nav += "<li><a href='#' class=''>View</a></li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Posts</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li><a href='#' class=''>Add</a></li>"
          nav += "<li><a href='#' class=''>Edit</a></li>"
          nav += "<li><a href='#' class=''>View</a></li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Assignments</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li><a href='#' class=''>Add</a></li>"
          nav += "<li><a href='#' class=''>Edit</a></li>"
          nav += "<li><a href='#' class=''>View</a></li></ul>"

    end
    nav
  end
end
