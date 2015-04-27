reset
open ../../drones.use
gen start ./simple.assl init(2, 2, 1, 2)
gen start -b ./simple.assl newOrder()

gen result accept
