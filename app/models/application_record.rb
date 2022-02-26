class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
# FOR MORE EXAMPLES OF VALIDATIONS AS WELL AS CUSTOM VALIDATION OPEN THIS DIRECTORY
# Developement/4-phase/phase-4-active-record-validations-lab
# AND THIS LINK: https://learning.flatironschool.com/courses/4568/assignments/167939?module_item_id=362859

  # validates :name, length: { minimum: 2 }
  # validates :bio, length: { maximum: 500 }
  # validates :password, length: { in: 6..20 }
  # validates :registration_number, length: { is: 6 }
  # validates :email, uniqueness: true
  # validates :not_a_robot, acceptance: true, message: "Humans only!"

  # validate :must_have_flatiron_email

# VALIDATION OF SPECIFIC EMAIL TYPE
  # def must_have_flatiron_email
  #   unless email.match?(/flatironschool.com/)
  #     errors.add(:email, "We're only allowed to have people who work for the company in the database!")
  #   end
  # end
end
