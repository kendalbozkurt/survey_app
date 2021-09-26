# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
survey_params = {title: "Survey 1", description: "Lorem ipsum ..",
          questions_attributes: {"1632645080338": {question: "Q 1", question_type: "paragraph"}, "1632645087795":
              {question: "Q 2", question_type: "option",
               question_options_attributes: {"1632645093514": {name: "Option 1"}, "1632645100772": {name: "Option 2"}}}}}

Survey.create(survey_params)