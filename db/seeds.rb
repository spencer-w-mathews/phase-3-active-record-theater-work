puts "seeding"

r1=Role.create(character_name: "jeff")
r2=Role.create(character_name: "joker")
r3=Role.create(character_name: "rabbit")

a1=Audition.create(actor:"James", location:"hollywood", phone:3141231231, hired:true, role: r1 )
a2=Audition.create(actor:"Jerry", location:"bollywood", phone:8167288821, hired:true, role: r1 )
a3=Audition.create(actor:"Bert", location:"Red Rocks", phone:9879879879, hired:true, role: r2 )
a4=Audition.create(actor:"Karen", location:"Walmart", phone:9980980890, hired:false, role: r2 )
a5=Audition.create(actor:"Kare", location:"Wlmart", phone:9980980890, hired:false, role: r3 )

puts "seeded"