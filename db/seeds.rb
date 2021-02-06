require 'faker'

Artist.destroy_all
Genre.destroy_all
Song.destroy_all


artist1 = Artist.create(name: Faker::Music.band, bio: Faker::Quote.famous_last_words)
artist2 = Artist.create(name: Faker::Music.band, bio: Faker::Quote.famous_last_words)
artist3 = Artist.create(name: Faker::Music.band, bio: Faker::Quote.famous_last_words)

genre1 = Genre.create(name: Faker::Music.genre)
genre2 = Genre.create(name: Faker::Music.genre)

song1 = Song.create(name: Faker::Music::RockBand.name, artist_id: artist1.id, genre_id: genre1.id)
song2 = Song.create(name: Faker::Music::RockBand.name, artist_id: artist2.id, genre_id: genre2.id)
song3 = Song.create(name: Faker::Music::RockBand.name, artist_id: artist3.id, genre_id: genre1.id)
song4 = Song.create(name: Faker::Music::RockBand.name, artist_id: artist3.id, genre_id: genre2.id)
song5 = Song.create(name: Faker::Music::RockBand.name, artist_id: artist3.id, genre_id: genre1.id)

