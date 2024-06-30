Restaurant.destroy_all
User.destroy_all

restaurants = Restaurant.create([
  { name: 'Seoul Kitchen', address: '123 Kimchi Blvd, Seoul, Korea' },
  { name: 'Tokyo Fusion', address: '456 Sakura St, Tokyo, Japan'},
  { name: 'Green Delight', address: '789 Vegan Way, Austin, USA'}
])
