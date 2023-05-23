
--Constraints and Keys(Primary & Foreign)
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);
-- Indexes for table `course`
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);
-- Indexes for table `courseorder`
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`)
-- Indexes for table `feedback`
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`)
-- Indexes for table `lesson`
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);
-- Indexes for table `student`
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);
--Foreign Keys 
CREATE INDEX idx_stu_email ON student (stu_email);  -- to optimize querying based on stu_email
ALTER TABLE `courseorder`
  ADD CONSTRAINT `fk_courseorder_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `fk_courseorder_stu_email` FOREIGN KEY (`stu_email`) REFERENCES `student` (`stu_email`);

ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_lesson_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
  
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);
