let h1 : healthcare_professional.
let h2 : healthcare_professional.
let h3 : healthcare_professional.
let p1 : patient.
let p2 : patient.
let eq1 : equipment.
let eq2 : equipment.

let t1 : (medication p1).
let t2 : (surgery p2).

let res1 : (high_resources h1).
let res2 : (low_resources h2).
let crit1 : (critical_condition p2).

let mob2 : (immobile p2).

let care1 : (assigned_care h1 p1).
let reh1 : (initiate_rehabilitation h1 p1).
let care1 : (assigned_care h2 p2).
let pall1 : (provide_palliative_care h2 p2).

let daxiom1 : [('h : healthcare_professional) -> ('p : patient) -> (critical_condition 'p) -> (obligatory (assign_red 'h 'p))].
let daxiom2 : [('h : healthcare_professional) -> ('p : patient) -> (stable_vitals 'p) -> (obligatory (assign_green 'h 'p))].
let daxiom3 : [('h : healthcare_professional) -> (unconscious p1) -> (obligatory (perform_examination 'h p1))].
let daxiom4 : [('h : healthcare_professional) -> ('p : patient) -> (immobile 'p) -> (not (obligatory (create_treatment_plan 'h 'p)))].
let daxiom17 : [('h : healthcare_professional) -> ('p : patient) -> (mobile 'p) -> (obligatory (discharge_patient 'h 'p))].
let daxiom5 : [('h : healthcare_professional) -> (high_resources 'h) -> (permissible (administer_treatment 'h p1))].
let daxiom6 : [('p : patient) -> (critical_condition 'p) -> (obligatory (monitor_patient h2 'p))].
let daxiom7 : [('h : healthcare_professional) -> ('p : patient) -> (conscious 'p) -> (not (obligatory (discharge_patient 'h 'p)))].
let daxiom8 : [('h : healthcare_professional) -> ('p : patient) -> (low_resources 'h) -> (impermissible (initiate_rehabilitation 'h 'p))].
let taxiom1 : [('p : patient) -> (critical_condition 'p) -> (red 'p)].
let taxiom2 : [('p : patient) -> (stable_vitals 'p) -> (green 'p)].
let taxiom3 : [('p : patient) -> (moderate 'p) -> (conscious 'p)].
let taxiom4 : [(immobile p2) -> (moderate p2)].
let taxiom6 : [('p : patient) -> (critical_condition 'p) -> (unstable_vitals 'p)].
let taxiom8 : [('h : healthcare_professional) -> (low_resources 'h) -> (nurse 'h)].
let taxiom10 : [('h : healthcare_professional) -> ('p : patient) -> (not_assigned_care 'h 'p) -> (critical_condition 'p)].

Result:
(taxiom4 mob2) : (moderate p2)
(taxiom3 p2 r1) : (conscious p2)
(daxiom7 h2 p2 r2) : (not (obligatory (discharge_patient h2 p2)))