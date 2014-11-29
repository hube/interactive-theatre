# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mm = Musical.create!(title: "Mamma Mia")
lm = Musical.create!(title: "Les Miserables")
wi = Musical.create!(title: "Wicked")

Song.create!([
  {
    title: "Mamma Mia",
    lyrics: "I've been cheated by you since I don't know when\nSo I made up my mind, it must come to an end\nLook at me now, will I ever learn?\nI don't know how but I suddenly lose control\nThere's a fire within my soul\nJust one look and I can hear a bell ring\nOne more look and I forget everything, w-o-o-o-oh",
    length: 210,
    musical_id: mm.id,
  }, {
    title: "Take a Chance on Me",
    lyrics: "If you change your mind, I'm the first in line\nHoney I'm still free\nTake a chance on me\nIf you need me, let me know, gonna be around\nIf you've got no place to go, if you're feeling down\nIf you're all alone when the pretty birds have flown\nHoney I'm still free\nTake a chance on me\nGonna do my very best and it ain't no lie\nIf you put me to the test, if you let me try",
    length: 244,
    musical_id: mm.id,
  }, {
    title: "I Dreamed a Dream",
    lyrics: "There was a time when men were kind\nWhen their voices were soft\nAnd their words inviting\nThere was a time when love was blind\nAnd the world was a song\nAnd the song was exciting\nThere was a time\nThen it all went wrong",
    length: 269,
    musical_id: lm.id,
  }, {
    title: "Do You Hear the People Sing",
    lyrics: "Do you hear the people sing?\nSinging a song of angry men?\nIt is the music of a people\nWho will not be slaves again!\nWhen the beating of your heart\nEchoes the beating of the drums\nThere is a life about to start\nWhen tomorrow comes!",
    length: 183,
    musical_id: lm.id,
  }, {
    title: "Master of the House",
    lyrics: "My band of soaks, my den of dissolute's\nMy dirty jokes, my always pissed as newts\nMy sons of whores spend their lives in my inn,\nHoming pigeons homing in\nThey fly through my doors,\nAnd they crawl out on all fours",
    length: 232,
    musical_id: lm.id,
  }, {
    title: "For Good",
    lyrics: "I'm limited.\nJust look at me.\nI'm limited.\nAnd just look at you.\nYou can do all I couldn't do.\nGlinda...\nSo now it's up to you,\nFor both of us.\nNow it's up to you.",
    length: 314,
    musical_id: wi.id,
  },
])
