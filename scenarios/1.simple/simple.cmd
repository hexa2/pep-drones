reset
open ../../drones.use
gen start ./simple.assl init(10, 10, 2, 2)
gen start ./simple.assl newOrder()
gen start ./simple.assl newOrder()
gen start ./simple.assl newOrder()
gen result accept
