class Routine < ActiveRecord::Base
  attr_accessible :day, :end_time, :faculty, :section, :start_time, :sub_name, :teacher_name, :year
end
