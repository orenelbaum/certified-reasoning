let b1 : person.
let b2 : person.
let b3 : person.
let h1 : group.
let f1 : event.
let f2 : event.
let f3 : event.

let org2 : (organizer f2 b2).
let part2 : (participant f3 b3).
let rec3 : (monthly f1).
let rec4 : (yearly f2).
let cat2 : (conference f1).
let dur1 : (short f1).
let dur2 : (long f3).
let rem1 : reminder = (hours_before b1 f1).
let rem2 : reminder = (days_before b2 f2).
let avail1 : (busy b1 f1).
let avail2 : (free b2 f3).
let vis1 : (public f3).
let vis2 : (private f1).

let daxiom11 : [('f : event) -> ('b : person) -> (busy 'b 'f) -> (impermissible (add_participant 'f 'b))].
let daxiom12 : [('f : event) -> ('b : person) -> (free 'b 'f) -> (permissible (add_participant 'f 'b))].
let daxiom13 : [('f : event) -> ('b : person) -> (long 'f) -> (permissible (reschedule_event 'f yearly))].
let daxiom14 : [('f : event) -> ('b : person) -> (high 'b 'f) -> (obligatory (set_reminder (days_before 'b 'f)))].
let daxiom15 : [('f : event) -> (conference 'f) -> (permissible (update_event 'f public))].
let daxiom16 : [('f : event) -> ('b : person) -> (low 'b 'f) -> (permissible (cancel_event 'f))].
let daxiom17 : [('f : event) -> ('b : person) -> (short 'f) -> (impermissible (reschedule_event 'f yearly))].
let daxiom18 : [('f : event) -> (private 'f) -> (obligatory (remove_participant 'f b3))].
let daxiom19 : [('f : event) -> ('b : person) -> (participant 'f 'b) -> (permissible (request_event_update 'b 'f))].
let daxiom20 : [('f : event) -> (organizer 'f b1) -> (obligatory (change_visibility 'f confidential))].

Result:
(daxiom17 f1 b3 dur1) : (impermissible (reschedule_event f1 yearly))