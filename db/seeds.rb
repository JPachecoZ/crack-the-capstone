puts "Start seeding data"

User.destroy_all

user_data = [{
  email: 'test@mail.com',
  first_name: 'Testino',
  last_name: 'Di Prueba',
  password: 'letmein',
  doc_type: 'DNI',
  doc_number: '01234567',
  country: 'PE'
},
{
  email: 'test1@mail.com',
  first_name: 'Jesus',
  last_name: 'Tuesta',
  password: 'letmein',
  doc_type: 'DNI',
  doc_number: '01234567',
  country: 'PE'
},
{
  email: 'test2@mail.com',
  first_name: 'Javier',
  last_name: 'Pacheco',
  password: 'letmein',
  doc_type: 'DNI',
  doc_number: '01234567',
  country: 'PE'
},
{
  email: 'test3@mail.com',
  first_name: 'Alonso',
  last_name: 'Zevallos',
  password: 'letmein',
  doc_type: 'DNI',
  doc_number: '01234567',
  country: 'PE'
}]

user_data.map {|user| User.create(**user)}

puts 'Finished seeding data'