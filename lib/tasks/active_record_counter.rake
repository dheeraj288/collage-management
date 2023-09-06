namespace :active_record_counter do
  desc "Display the count of student model"
  task students_count: :environment do
   puts  "students count = #{Student.count}"
  end

  desc "Display the count of course model"
  task courses_count: :environment do
    puts  "students count = #{Course.count}"
  end

  desc "Display the count of blog blog model"
  task blogs_count: :environment do
    puts  "students count = #{Blog.count}"
  end

end
