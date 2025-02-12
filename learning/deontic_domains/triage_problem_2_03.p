let h4 : healthcare_professional.
let h5 : healthcare_professional.
let h6 : healthcare_professional.
let p3 : patient.
let p4 : patient.
let eq3 : equipment.
let eq4 : equipment.

let t3 : (physical_therapy p3).
let t4 : (medication p4).

let staff1 : (high_staff h4).
let staff2 : (low_resources h5).
let unstab1 : (unstable_vitals p3).
let stab2 : (stable_condition p4).

let uncons1 : (unconscious p3).
let mob4 : (mobile p4).

let care2 : (assigned_care h4 p3).
let rehab2 : (initiate_rehabilitation h4 p3).
let care3 : (assigned_care h5 p4).
let mental1 : (provide_mental_health_support h5 p4).

let daxiom11 : [('h : healthcare_professional) -> ('p : patient) -> (unstable_vitals 'p) -> (obligatory (assign_red 'h 'p))].
let daxiom13 : [('h : healthcare_professional) -> (unconscious p3) -> (obligatory (perform_examination 'h p3))].
let daxiom15 : [('h : healthcare_professional) -> ('p : patient) -> (low_resources 'h) -> (impermissible (administer_treatment 'h 'p))].
let daxiom9 : [('h : healthcare_professional) -> ('p : patient) -> (physical_therapy 'p) -> (obligatory (discharge_patient 'h 'p))].
let daxiom16 : [('h : healthcare_professional) -> ('p : patient) -> (unstable_vitals 'p) -> (obligatory (monitor_patient 'h 'p))].
let daxiom19 : [('h : healthcare_professional) -> ('p : patient) -> (conscious 'p) -> (not (obligatory (discharge_patient 'h 'p)))].
let daxiom20 : [('h : healthcare_professional) -> ('p : patient) -> (no_follow_up_plan 'h 'p) -> (obligatory (provide_family_support 'h 'p))].
let taxiom1 : [('p : patient) -> (unstable_vitals 'p) -> (critical_condition 'p)].
let taxiom2 : [('p : patient) -> (stable_condition 'p) -> (conscious 'p)].
let taxiom3 : [('h : healthcare_professional) -> (high_resources 'h) -> (high_staff 'h)].
let taxiom4 : [('h : healthcare_professional) -> ('p : patient) -> (moderate 'p) -> (no_follow_up_plan 'h 'p)].
let taxiom9 : [('h : healthcare_professional) -> ('p : patient) -> (provide_mental_health_support 'h 'p) -> (unstable_mental_state 'p)].

Result:
(taxiom2 p4 stab2) : (conscious p4)
(daxiom19 h4 p4 r1) : (not (obligatory (discharge_patient h4 p4)))