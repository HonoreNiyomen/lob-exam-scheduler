alias LobExams.Repo
alias LobExams.{Accounts.User, CourseModule, University, Location, Room, Exam}
alias LobExams.UsersCourses

# 1. University
university1 = Repo.insert!(%University{
  name: "Open University"
})
university2 = Repo.insert!(%University{
  name: "Closed University"
})

# 2. CourseModule
course1 = Repo.insert!(%CourseModule{
  name: "Programing in Elixir",
  code: "CS101",
  university: university1
})
course2 = Repo.insert!(%CourseModule{
  name: "Operating Systems",
  code: "CS101",
  university: university1
})
course3 = Repo.insert!(%CourseModule{
  name: "Database Systems",
  code: "CS101",
  university: university2
})

# 3. Location
location1 = Repo.insert!(%Location{
  mode: "physical",
  venue: "Glass Campus",
  university: university1
})
location2 = Repo.insert!(%Location{
  mode: "physical",
  venue: "Medical Campus",
  university: university2
})
location3 = Repo.insert!(%Location{
  mode: "online",
  venue: "Zoom",
  university: university2
})

# 4. Room
room1 = Repo.insert!(%Room{
  name: "Room A",
  capacity: 30,
  location: location1
})
room2 = Repo.insert!(%Room{
  name: "R250",
  capacity: 60,
  location: location2
})
room3 = Repo.insert!(%Room{
  name: "B12",
  capacity: 40,
  location: location3
})
room4 = Repo.insert!(%Room{
  name: "C14",
  capacity: 30,
  location: location3
})

# 5. Users
%User{}
|> User.registration_changeset( %{
    username: "Admin",
    firstname: "Admin",
    lastname: "Test",
    email: "admin@lobexams.com",
    role: "admin",
    confirmed_at: DateTime.utc_now(),
    password: "adminpassword"})
|> Repo.insert()

%User{}
|> User.registration_changeset( %{
    username: "Lecturer",
    firstname: "Test",
    lastname: "Staff",
    email: "lecturer@lobexams.com",
    role: "lecturer",
    confirmed_at: DateTime.utc_now(),
    password: "lecturerpassword"},
    university_id: university1.id)
|> Repo.insert()

%User{}
|> User.registration_changeset( %{
    username: "Closed University",
    firstname: "Test",
    lastname: "university",
    email: "university@lobexams.com",
    role: "university",
    confirmed_at: DateTime.utc_now(),
    password: "universitypassword"},
    university_id: university2.id)
|> Repo.insert()

{:ok, user1} = %User{} |> User.registration_changeset(%{
    username: "student1",
    firstname: "Test2",
    lastname: "Student",
    email: "student1@lobexams.com",
    role: "student",
    confirmed_at: DateTime.utc_now(),
    password: "studentpassword",
    university_id: university1.id
  }) |> Repo.insert()

{:ok, user2} = %User{} |> User.registration_changeset(%{
  username: "student2",
  firstname: "Test2",
  lastname: "Student",
  email: "student2@lobexams.com",
  role: "student",
  confirmed_at: DateTime.utc_now(),
  password: "studentpassword",
  university_id: university2.id
}) |> Repo.insert()

# 6. UsersCourses Join
Repo.insert!(%UsersCourses{
  user: user1,
  course_module: course3
})
Repo.insert!(%UsersCourses{
  user: user1,
  course_module: course1
})
Repo.insert!(%UsersCourses{
  user: user1,
  course_module: course2
})
Repo.insert!(%UsersCourses{
  user: user2,
  course_module: course3
})
Repo.insert!(%UsersCourses{
  user: user2,
  course_module: course2
})

# 7. Exam
Repo.insert!(%Exam{
  datetime: ~U[2025-06-01 09:00:00Z],
  duration: 120,
  course_module: course1,
  room: room2
})
Repo.insert!(%Exam{
  datetime: ~U[2025-06-01 12:00:00Z],
  duration: 120,
  course_module: course2,
  room: room3
})
Repo.insert!(%Exam{
  datetime: ~U[2025-06-01 14:00:00Z],
  duration: 120,
  course_module: course3,
  room: room1
})
