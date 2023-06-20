!create lp1 : LandParcel
!lp1.id := '1'

!create lp2 : LandParcel
!lp2.id := '2'

!create vp1 : ValidityPeriod
!create vp2 : ValidityPeriod

!create bl1 : BoundaryLine
!create bl2 : BoundaryLine
!create bl3 : BoundaryLine

!create d1 : Date
!d1.day := 1
!d1.month := 1
!d1.year := 2001

!create d2 : Date
!d2.day := 1
!d2.month := 1
!d2.year := 2023

!create d3 : Date



-- hier wird 'validTimePeriod' true:
!vp1.startDate := d1
!vp1.endDate := d2
!vp2.startDate := d1
!vp2.endDate := d2

-- hier wird 'validTimePeriod' false:
!vp2.startDate := d2
!vp2.endDate := d1

!insert (lp1, vp1) into LandParcel_ValidityPeriod
!insert (lp2, vp2) into LandParcel_ValidityPeriod
!insert (lp1, bl1) into LandParcel_BoundaryLine
!insert (lp2, bl1) into LandParcel_BoundaryLine
!insert (bl1, lp1) into BoundaryLine_LandParcel
!insert (bl1, lp1) into BoundaryLine_LandParcel

-- pre oldParcelExisting ist true:
!openter lp1 split(bl3)
!opexit lp2
-- die meisten Nachbedingungen sind false

