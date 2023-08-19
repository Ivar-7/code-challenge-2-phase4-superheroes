puts "Clear existing data"
HeroPower.destroy_all
Power.destroy_all
Hero.destroy_all

puts "Create Heroes"
heroes = Hero.create([
    { name: 'Robert Downey Jr', super_name: 'Iron Man' },
    { name: 'Gwen Stacy', super_name: 'Spider-Gwen' },
    { name: 'Doreen Green', super_name: 'Squirrel Girl' }
])

puts "Creating Powers"
powers = Power.create([
  { name: 'Super Strength', description: 'Gives the wielder super-human strengths' },
  { name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed' },
  { name: 'Telepathy', description: 'Allows the wielder to read minds and communicate mentally' }
])

puts "Creating HeroPowers associations"
HeroPower.create([
  { hero: heroes[0], power: powers[0], strength: 'Strong' },
  { hero: heroes[0], power: powers[1], strength: 'Average' },
  { hero: heroes[1], power: powers[1], strength: 'Weak' },
  { hero: heroes[2], power: powers[2], strength: 'Average' },
  { hero: heroes[2], power: powers[0], strength: 'Average' }
])

puts "Seed data created!"
