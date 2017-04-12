User.destroy_all
Trip.destroy_all
Membership.destroy_all

users = [
	{
		first_name: "Faustino",
		last_name: "Jimenez",
		email: "f@j.com",
		password: "123456",
    phone_number: "(415)455-7890"
	},
  {
    first_name: "Fatima",
    last_name: "Hussain",
    email: "f@h.com",
    password: "123456",
    phone_number: "(408)455-7892"
  },
  {
    first_name: "Velma",
    last_name: "Books",
    email: "v@b.com",
    password: "123456",
    phone_number: "(510)455-7893"
  },
  {
    first_name: "Carla",
    last_name: "Lau",
    email: "c@l.com",
    password: "123456",
    phone_number: "(408)898-7890"
  },
  {
    first_name: "Zeke",
    last_name: "Figuero",
    email: "z@f.com",
    password: "123456",
    phone_number: "(408)378-7890"
  },
  {
    first_name: "MJ",
    last_name: "De Leon",
    email: "m@d.com",
    password: "123456",
    phone_number: "(510)886-7890"
  },
  {
    first_name: "Zakir",
    last_name: "Haq",
    email: "z@h.com",
    password: "123456",
    phone_number: "(408)988-7890"
  },
  {
    first_name: "Kerry",
    last_name: "Mathers",
    email: "k@m.com",
    password: "123456",
    phone_number: "(510)688-7890"
  },
]

User.create(users)
