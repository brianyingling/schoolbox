module ApplicationHelper
  def teacher_nav
    nav = ""
    if @auth.is_a?(Teacher)
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#' id='course_menu_link' class='navlinks'>Courses</a>"
          nav += "<ul class='dropdown'>"
          @auth.courses.each do |course|
            if course.klasses.present?
              nav += "<li class='has-dropdown'>" + link_to(course.name, course_path(course.id), :class=>'navlinks')+ "<ul class='dropdown'>"
              course.klasses.each do |klass|
                nav += "<li>" + link_to("Period #{klass.period}", klass_path(klass.id), :class=>'navlinks') + "</li>"
              end
              nav += "<li>" + link_to("Add Section", new_klass_path, :id=>'add_klass_link', :class=>'navlinks')
              nav += "</ul></li>"
            end
          end
          nav += "<li>" + link_to("Add Course", new_course_path, :id=>'add_course_link', :class=>'navlinks')
          # nav += "<li>" + link_to("View Courses", courses_path, :id=>'view_course_link', :class=>'navlinks') + "</li>
          nav += "</ul>"
      # nav += "<li class='has-dropdown'>"
      #   nav += "<a href='#' id='klass_menu_link' class='navlinks'>Classes</a>"
      #     nav += "<ul class='dropdown'>"
      #     nav += "<li>" + link_to("Add Class", new_klass_path, :id=>'add_klass_link', :class=>'navlinks')
      #     nav += "<li>" + link_to("View Classes", klasses_path, :id=>'view_klass_link', :class=>'navlinks') + "</li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#' class='navlinks'>Posts</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li>" + link_to('Add Post', new_post_path, :id=>'new_post_link', :class=>'navlinks') + "</li>"
          nav += "<li>" + link_to('View Post', posts_path, :id=>'view_post_link', :class=>'navlinks') + "</li></ul>"
      nav += "<li class='has-dropdown'>"
        nav += "<a href='#', id='assignments_menu_link' class='navlinks'>Assignments</a>"
          nav += "<ul class='dropdown'>"
          nav += "<li>" + link_to('Add Assignment', new_assignment_path, :id=>'add_assignment_link', :class=>'navlinks') + "</li>"
          nav += "<li>" + link_to("View Assignments", assignments_path, :id=>'view_assigments_link', :class=>'navlinks') + "</li></ul>"
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
