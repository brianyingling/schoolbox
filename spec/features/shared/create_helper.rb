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

  def create_student(student)
    visit root_path
    click_link('Register')
    click_link('New Student')
    fill_in('Username', :with=>student.username)
    fill_in('First name', :with=>student.first_name)
    fill_in('Last name', :with=>student.last_name)
    fill_in('Email',:with=>student.email)
    fill_in('student_password',:with=>student.password)
    fill_in('student_password_confirmation',:with=>student.password)
    click_button('Create Student')
  end

  def create_post(post)
    visit root_path
    click_link('Posts')
    find('#new_post_link').click
    fill_in('Title', :with=>post.title)
    fill_in('Message',:with=>post.message)
    check('post[klass_ids][]')
    click_button('Create Post')
  end

  def create_assignment(assignment, teacher)
    visit root_path
    find('#assignments_menu_link').click
    click_link('Add Assignment')
    fill_in(:name, :with=>assignment.name)
    fill_in(:description, :with=>assignment.description)
    fill_in(:duedate, :with=>assignment.duedate)
    fill_in(:value,:with=>assignment.value)

    # NEED TO FILL IN KLASSES -- CHECK WHICH KLASSES ARE FOR THIS
    # ASSIGNMENT

  end


end