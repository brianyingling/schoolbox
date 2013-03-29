module CreateHelper
  def create_course(teacher, course)
    visit new_course_path
    find('#course_menu_link').click
    find('#add_course_link').click
    fill_in('Name',:with=>course.name)
    fill_in('Description',:with=>course.description)
    choose("course[teacher_id]")
    click_button('Create Course')
  end

  def create_klass(teacher, course)
    visit new_klass_path
    choose("klass[course_id]")
    select("1", :from=>"klass[period]")
    click_button('Create Class')
  end


end