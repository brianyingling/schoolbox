# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Teacher.delete_all
Student.delete_all
Course.delete_all
Klass.delete_all
Post.delete_all
Comment.delete_all
Calendar.delete_all

c1 = Course.create(:name=>'US History I', :description=>'This is US History I. It is intensive.')
c2 = Course.create(:name=>'World History', :description=>'This is world history. It is intensive.')
c3 = Course.create(:name=>'GA Web Development Immersive', :description=>'This is WDI. It is immersive.')

t1 = Teacher.create(:username=>'myingling',:email=>'m_rogers3@hotmail.com',:first_name=>"Melissa",:last_name=>'Yingling',:password=>'myingling',:password_confirmation=>'myingling')
t2 = Teacher.create(:username=>'byingling',:email=>'byingling@gmail.com',:first_name=>"Brian",:last_name=>'Yingling',:password=>'byingling',:password_confirmation=>'byingling')

t3 = Teacher.create(:username=>'chyld',:email=>'chyld@chyld.com',:first_name=>"Chyld",:last_name=>'Medford',:password=>'chyld',:password_confirmation=>'chyld')

s1 = Student.create(:username=>'bob',:email=>'bob@gmail.com',:password=>'bob',:password_confirmation=>'bob', :first_name=>'Bob',:last_name=>'Smith',:address=>'10 E 21st St, NY, NY')

s2 = Student.create(:username=>'jane', :password=>'jane',:password_confirmation=>'jane', :first_name=>'Jane', :last_name=>'Smith',:address=>'10 E 21st St, NY, NY',:email=>'jane@gmail.com')

s3 = Student.create(:username=>'george',:first_name=>'George',:last_name=>'Jones',:password=>'george',:password_confirmation=>'george',:address=>'10 E 21st St, NY, NY',:email=>'george@gmail.com')

k1 = Klass.create(:schoolyear=>'2011-2012',:period=>1)
k2 = Klass.create(:schoolyear=>'2012-2013',:period=>3)
k3 = Klass.create(:schoolyear=>'2013',:period=>1)

p1 = Post.create(:title=>'Discussion Question: Is free speech unlimited according to the 1st Amendment?', :message=>'Do you believe that people can say whatever they want? Should speech be curbed in some ways, and why?',:postdate=>Time.now)

p2 = Post.create(:title=>'Discussion Question: Should the US have dropped the atomic bomb on Japan to end WWII?', :message=>'Some people believe that the US could have avoided using the bomb by either invading Japan or demonstrating the bomb\'s power on a faraway island. Do you agree or disagree?')

p3 = Post.create(:title=>'Discussion Question: Which do you like better, Ruby or JavaScript? Why?', :message=>'We all know JavaScript sucks, but it does have its advantages. Do those advantages measure up to Ruby\'s syntax and elegance? Discuss.')

cmt1 = Comment.create(:text=>'I think speech should be limited because stupid people shouldn\'t be allowed to speak.')

cmt2 = Comment.create(:text=>'It just sounds painful.')

cmt3 = Comment.create(:text=>'Everybody knows JavaScript sucks and Ruby is the bomb. Go Rails!')

t1.courses << c2
t2.courses << c1
t3.courses << c3

c1.klasses << k1
c2.klasses << k2
c3.klasses << k3

k1.students << s1 << s2
k1.students << s2
k1.students << s3

k2.students << s1
k2.students << s2
k2.students << s3

k3.students << s1
k3.students << s3

t1.posts << p1
t2.posts << p2
t3.posts << p3

p1.comments << cmt1
p2.comments << cmt2
p3.comments << cmt3

s1.comments << cmt1
s2.comments << cmt2
s3.comments << cmt3

k1.posts << p1
k1.posts << p2
k2.posts << p1
k2.posts << p2
k3.posts << p1
k3.posts << p2












