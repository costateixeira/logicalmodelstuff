Logical: ObservationModel
Title: "Observation Model"
Description: "Base model for observations"


* subject 1..1 Reference(Patient) "Subject"
* status 1..1 code


Logical: LabObservationModel
Parent: ObservationModel
Title: "Laboratory Observation Model"
Description: "Model for laboratory observations, extending the base observation model"

* subject ^min = 0
* subject ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Patient"
* subject ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Practitioner"
* subjectName 0..1 string "Subject Name"  //is there any way to make this appear before the element `status` ?
* date 1..1 dateTime "Date Time"
