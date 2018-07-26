require_relative "student"
require_relative "magicDepartment"
require_relative "scienceDepartment"


Snape = MagicDepartment.new("Severus","Snape")
Tesla = ScienceDepartment.new("Nicola","Tesla")

p Tesla.light?("wave")

p Tesla.fullname

stewie = Student.new("Stewie","Griffin")
meg = Student.new("Meg","Griffin")
chriss = Student.new("Chriss","Griffin")
lois = Student.new("Lois","Griffin")

students = []

students << stewie
students << meg
students << chriss
students << lois

Snape.teach(stewie)
Snape.teach(stewie)

stewie.slack
stewie.slack
stewie.slack

Snape.teachCohort(students)

p students