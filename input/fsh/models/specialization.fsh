Logical: ObservationModel
Title: "Observation Model"
Description: "Base model for observations"


* subject 1..1 Reference(Patient) "Subject"


Logical: LabObservationModel
Parent: ObservationModel
Title: "Laboratory Observation Model"
Description: "Model for laboratory observations, extending the base observation model"

* date 1..1 dateTime "Date Time"
* subject ^min = 0
* subject ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Patient"
* subject ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Practitioner"
