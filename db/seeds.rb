require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all


CATEGORIES = [
  'Adesivi & articoli tecnici',
  'Giardinaggio',
  'Antinfortunistica',
  'Casalinghi',
  'Colori',
  'Edilizia',
  'Elletrodomestici',
  'Ferramenta',
  'Idraulica',
  'Magazzino',
  'Materiale elettrico'
  ]

  ADDRESSES = [
  'Maarten Lutherweg 122, 1185 Amstelveen',
  'Charley Tooropgracht 843, 1112 Diemen',
  'Hovendaal 91, 9660 Brakel',
  'Kerkstraat 273, 1017 Amsterdam',
  'Leidseplein 15, 1017  Amsterdam',
  'Van Breestraat 69, 1071 Amsterdam',
  'Tweede Jan van der Heijdenstraat 2, 1073 Amsterdam',
  'Lindengracht 23, 1015 Amsterdam',
  'Meeuwenlaan 145, 1021 Amsterdam',
  'J.J. Cremerplein 45, 1054 Amsterdam'
   ]

  PRODUCTS_NAMES = [
  'ACQUA DISTILLATA LT.5 AMACASA',
  'DECESPUGLIATORE 25,4CC RBC254SESO (COMPATIBILE E-STAR)',
  'GUANTI PALMATI PZ.500 BIANCHI IN ROTOLO',
  'IGIENIZZANTE PRONTO PROFUMATO SPRAY ML.750 MADRAS',
  'MANICI X RULLI D.8-SM.1101 20',
  'BETONIERA MIX 100 MONOFASE HP 0,40',
  'ASPIRACENERE ASHLEY 901',
  'BATTENTE MONACO MM.150 OLV',
  'ARIEGGIATORE A SCOPPIO COMBIC 38P',
  'POMPA SOMMERSA 1100W INOX X ACQUE SPORCHE PF1110',
  'AVVITATORE A PERCUSSIONE 18V LITIO S/BATTERIA BL MOTOR DHP483ZJ',
  'FARO A LED 2x50W SU TREPPIEDE IN METALLO 2x4000 LUMEN 6500K IS747'
  ]

  EMAILS = [
    'micciullapiero@gmail.com',
    'monicandreoli@gmail.com',
    'christianbale@yahoo.com',
    'timroth@hotmail.com',
    'batman@yahoo.com',
    'robin@gmail.com',
    'miakhalifa@hotmail.com',
    'jamesbond@yahoo.com',
    'brucewillis@hotmail.com',
    'brucewayne@hotmail.com',
    'brucebane@hotmail.com'
     ]


puts 'Creating 1 admin...'

admin = User.create(
    first_name: "Stefano",
    last_name: "Favarin",
    address: "Via Grantorto 123",
    email: "ferramenta.favarin@yahoo.it",
    password: "123456",
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )

puts "Created #{User.count} admin!"

user_buyer_1 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name::last_name,
    address: ADDRESSES.sample,
    email: EMAILS.shuffle!.pop,
    password: Faker::Internet.password,
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )

  user_buyer_2 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name::last_name,
    address: ADDRESSES.sample,
    email: EMAILS.shuffle!.pop,
    password: Faker::Internet.password,
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )

  user_buyer_3 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name::last_name,
    address: ADDRESSES.sample,
    email: EMAILS.shuffle!.pop,
    password: Faker::Internet.password,
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )

  user_buyer_4 = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name::last_name,
    address: ADDRESSES.sample,
    email: EMAILS.shuffle!.pop,
    password: Faker::Internet.password,
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )

  user_buyer_5 = User.create(
    first_name: 'Donald',
    last_name: 'Trump',
    address: 'USA',
    email: 'donaldtrump@hotmail.com',
    password: '456789',
    city: "Grantorto",
    post_code: "35010",
    country: "Italy"
    )





# products

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

Product.create!(
    name: PRODUCTS_NAMES.sample,
    price: (200..500).to_a.sample,
    reference_number: (100000..999999).to_a.sample,
    category: CATEGORIES.sample,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )

  puts "Created #{Product.count} products for shops..."
