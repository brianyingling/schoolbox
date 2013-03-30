module ApplicationHelper
  def teacher_nav
    nav = ""
    if @auth.is_a?(Teacher)
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#' id='course_menu_link'>Courses</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li>" + link_to("Add Course", new_course_path, :id=>'add_course_link')
          nav += "<li>" + link_to("View Courses", courses_path, :id=>'view_course_link') + "</li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#' id='klass_menu_link'>Classes</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li>" + link_to("Add Class", new_klass_path, :id=>'add_klass_link')
          nav += "<li>" + link_to("View Classes", klasses_path, :id=>'view_klass_link') + "</li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Posts</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li>" + link_to('Add Post', new_post_path, :id=>'new_post_link') + "</li>"
          nav += "<li>" + link_to('View Post', posts_path, :id=>'view_post_link') + "</li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#'>Assignments</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li><a href='#' class=''>Add Assignment</a></li>"
          nav += "<li><a href='#' class=''>View Assignment</a></li></ul>"
    end
    nav
  end

  def teacher_settings_nav
    nav = ''
    if @auth.is_a?(Teacher)
      nav += "<li><label>Important Info</label></li>"
      nav += "<li>"+ link_to("Account Settings", '#', :id=>'account_settings_link') + "</li>"
      nav += "<li>"+ link_to("View All Teachers", teachers_path) + "</li>"
      nav += "<li>"+ link_to("View All Students", students_path) + "</li>"
    end
    nav
  end

  def student_settings_nav
    nav = ''
    nav += '<li><label>Important Info</label></li>'
    nav += '<li>' + link_to("Account Settings", edit_student_path(@auth.id), :id=>'account_settings_btn') + "</li>"
  end


end
