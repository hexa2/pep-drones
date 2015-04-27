reset
open ../drones.use

!create g : GlobalState

!create n11 : Node
!create n12 : Node
!create n13 : Warehouse
!create n14 : Target
!create n21 : Node
!create n22 : Node
!create n23 : Target
!create n24 : Node
!create n31 : Node
!create n32 : Node
!create n33 : Node
!create n34 : Node
!create n41 : Node
!create n42 : Node
!create n43 : Node
!create n44 : Node

!create d1 : Drone
!create d2 : Drone

!create o1 : Order
!create o2 : Order
!create o3 : Order

!create p1 : Product
!create p2 : Product
!create p3 : Product
!create p4 : Product

!insert (n13,d1) into DroneLocation
!insert (n13,d2) into DroneLocation

!insert (n14,o1) into OrderProduct
!insert (n14,o2) into OrderProduct
!insert (n23,o3) into OrderProduct

!insert (o1,p1) into CarriedProducts
!insert (o1,p2) into CarriedProducts
!insert (o2,p3) into CarriedProducts
!insert (o3,p4) into CarriedProducts

!insert(d1,o1) into DroneOrders
!insert(d1,o2) into DroneOrders
!insert(d2,o3) into DroneOrders

!set g.elapsedTime := 0
!set g.DNB := 2
!set g.RNB := 2

!set n11.x := 1
!set n11.y := 1
!set n12.x := 1
!set n12.y := 2
!set n13.x := 1
!set n13.y := 3
!set n14.x := 1
!set n14.y := 4

!set n21.x := 2
!set n21.y := 1
!set n22.x := 2
!set n22.y := 2
!set n23.x := 2
!set n23.y := 3
!set n24.x := 2
!set n24.y := 4

!set n31.x := 3
!set n31.y := 1
!set n32.x := 3
!set n32.y := 2
!set n33.x := 3
!set n33.y := 3
!set n34.x := 3
!set n34.y := 4

!set n41.x := 4
!set n41.y := 1
!set n42.x := 4
!set n42.y := 2
!set n43.x := 4
!set n43.y := 3
!set n44.x := 4
!set n44.y := 4

!set n14.state := TargetState::Empty
!set n14.RCAP := 200
!set n23.state := TargetState::Empty
!set n23.RCAP := 250 

!set d1.state := DroneState::Boarding
!set d1.DCAP := 200
!set d1.charge := 3
!set d1.isActing := false
!set d1.pathIdx := 0
!set d2.state := DroneState::Boarding
!set d2.DCAP := 300
!set d2.charge := 3
!set d2.isActing := false
!set d2.pathIdx := 0


!set o1.state  := OrderState::Waiting
!set o2.state  := OrderState::Waiting
!set o3.state  := OrderState::Waiting

!set p1.weight := 20
!set p2.weight := 30
!set p3.weight := 40
!set p4.weight := 50


check


