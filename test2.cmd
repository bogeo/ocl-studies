-- create 10 different BoundaryPoints
!create bp1 : BoundaryPoint

!create bp3 : BoundaryPoint
!create bp4 : BoundaryPoint
!create bp5 : BoundaryPoint
!create bp6 : BoundaryPoint
!create bp7 : BoundaryPoint


--add values to the BoundaryPoints
!bp1.x := 0
!bp1.y := 0

!bp3.x := 1
!bp3.y := 1

!bp4.x := 1
!bp4.y := 0

!bp5.x := 2
!bp5.y := 0

!bp6.x := 2
!bp6.y := 6

!bp7.x := 0
!bp7.y := 6

-- create BoundaryLines
!create bl1 : BoundaryLine
!create bl2 : BoundaryLine
!create bl3 : BoundaryLine
!create bl4 : BoundaryLine
!create bl5 : BoundaryLine
!create bl6 : BoundaryLine
!create bl7 : BoundaryLine
!create bl8 : BoundaryLine
!create bl9 : BoundaryLine

-- add values to the BoundaryLines
!bl1.firstPoint := bp1
!bl1.secondPoint := bp7

!bl2.firstPoint := bp7
!bl2.secondPoint := bp6

!bl3.firstPoint := bp6
!bl3.secondPoint := bp5

!bl4.firstPoint := bp5
!bl4.secondPoint := bp4

!bl5.firstPoint := bp4
!bl5.secondPoint := bp1

!bl6.firstPoint := bp4
!bl6.secondPoint := bp3

!bl7.firstPoint := bp3
!bl7.secondPoint := bp7

!bl8.firstPoint := bp7
!bl8.secondPoint := bp3

!bl9.firstPoint := bp3
!bl9.secondPoint := bp4

-- create LandParcels
!create lp1 : LandParcel
!create lp2 : LandParcel

-- add values to the LandParcels

!lp1.id := '1'
!lp1.area := 10 

!lp2.id := '2'
!lp2.area := 20

--associate points to BoundaryLine
!insert (bl1,bp1) into BoundaryLine_BoundaryPoint
!insert (bl1,bp7) into BoundaryLine_BoundaryPoint
!insert (bl7, bp7) into BoundaryLine_BoundaryPoint
!insert (bl7, bp3) into BoundaryLine_BoundaryPoint
!insert (bl6, bp3) into BoundaryLine_BoundaryPoint
!insert (bl6, bp4) into BoundaryLine_BoundaryPoint
!insert (bl5, bp4) into BoundaryLine_BoundaryPoint
!insert (bl5, bp1) into BoundaryLine_BoundaryPoint
!insert (bl2, bp7) into BoundaryLine_BoundaryPoint
!insert (bl2, bp6) into BoundaryLine_BoundaryPoint
!insert (bl3, bp6) into BoundaryLine_BoundaryPoint
!insert (bl3, bp5) into BoundaryLine_BoundaryPoint
!insert (bl4, bp5) into BoundaryLine_BoundaryPoint
!insert (bl4, bp4) into BoundaryLine_BoundaryPoint
!insert (bl8, bp7) into BoundaryLine_BoundaryPoint
!insert (bl8, bp3) into BoundaryLine_BoundaryPoint
!insert (bl9, bp3) into BoundaryLine_BoundaryPoint
!insert (bl9, bp4) into BoundaryLine_BoundaryPoint

--associate BoundaryLines to LandParcels
!insert (lp1, bl1) into LandParcel_BoundaryLine
!insert (lp1, bl7) into LandParcel_BoundaryLine
!insert (lp1, bl6) into LandParcel_BoundaryLine
!insert (lp1, bl5) into LandParcel_BoundaryLine

!insert (lp2, bl2) into LandParcel_BoundaryLine
!insert (lp2, bl3) into LandParcel_BoundaryLine
!insert (lp2, bl4) into LandParcel_BoundaryLine
!insert (lp2, bl8) into LandParcel_BoundaryLine
!insert (lp2, bl9) into LandParcel_BoundaryLine

--checking invariant (1) `LandParcel::closedPolygon': FAILED. ??
--  -> false : Boolean
--checking invariant (2) `LandParcel::noDuplicateBoundaryLines': OK.
--checking invariant (3) `LandParcel::noEmptyBoundaryLine': OK.
--checking invariant (4) `LandParcel::uniqueID': OK.
--checking invariant (5) `ValidityPeriod::validTimePeriod': OK.
--checked 5 invariants in 0.008s, 1 failure.
