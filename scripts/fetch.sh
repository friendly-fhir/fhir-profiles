#!/usr/bin/env bash

set -euo pipefail

root_dir="$(git rev-parse --show-toplevel)"
readonly root_dir

r4=(
  # Abstract
  element
  backboneelement
  resource
  domainresource
  # Primitive
  base64binary
  boolean
  canonical
  code
  date
  datetime
  decimal
  id
  instant
  integer
  markdown
  oid
  positiveint
  string
  time
  unsignedint
  uri
  url
  uuid
  # Data Types
  address
  age
  annotation
  attachment
  codeableconcept
  coding
  contactdetail
  contactpoint
  contributor
  count
  datarequirement
  distance
  dosage
  duration
  expression
  humanname
  marketingstatus
  meta
  money
  narrative
  parameterdefinition
  period
  population
  prodcharacteristic
  productshelflife
  quantity
  range
  ratio
  reference
  relatedartifact
  sampleddata
  signature
  substanceamount
  timing
  triggerdefinition
  usagecontext

  # Resource
  account
  activitydefinition
  adverseevent
  allergyintolerance
  appointment
  appointmentresponse
  auditevent
  basic
  binary
  biologicallyderivedproduct
  bodystructure
  bundle
  capabilitystatement
  careplan
  careteam
  catalogentry
  chargeitem
  chargeitemdefinition
  claim
  claimresponse
  clinicalimpression
  codesystem
  communication
  communicationrequest
  compartmentdefinition
  composition
  conceptmap
  condition
  consent
  contract
  coverage
  coverageeligibilityrequest
  coverageeligibilityresponse
  detectedissue
  device
  devicedefinition
  devicemetric
  devicerequest
  deviceusestatement
  diagnosticreport
  documentmanifest
  documentreference
  effectevidencesynthesis
  encounter
  endpoint
  enrollmentrequest
  enrollmentresponse
  episodeofcare
  eventdefinition
  evidence
  evidencevariable
  examplescenario
  explanationofbenefit
  familymemberhistory
  flag
  goal
  graphdefinition
  group
  guidanceresponse
  healthcareservice
  imagingstudy
  immunization
  immunizationevaluation
  immunizationrecommendation
  implementationguide
  insuranceplan
  invoice
  library
  linkage
  list
  location
  measure
  measurereport
  media
  medication
  medicationadministration
  medicationdispense
  medicationknowledge
  medicationrequest
  medicationstatement
  medicinalproduct
  medicinalproductauthorization
  medicinalproductcontraindication
  medicinalproductindication
  medicinalproductingredient
  medicinalproductinteraction
  medicinalproductmanufactured
  medicinalproductpackaged
  medicinalproductpharmaceutical
  medicinalproductundesirableeffect
  messagedefinition
  messageheader
  molecularsequence
  namingsystem
  nutritionorder
  observation
  observationdefinition
  operationdefinition
  operationoutcome
  organization
  organizationaffiliation
  patient
  paymentnotice
  paymentreconciliation
  person
  plandefinition
  practitioner
  practitionerrole
  procedure
  provenance
  questionnaire
  questionnaireresponse
  relatedperson
  requestgroup
  researchdefinition
  researchelementdefinition
  researchstudy
  researchsubject
  riskassessment
  riskevidencesynthesis
  schedule
  searchparameter
  servicerequest
  slot
  specimen
  specimendefinition
  structuredefinition
  structuremap
  subscription
  substance
  substancenucleicacid
  substancepolymer
  substanceprotein
  substancereferenceinformation
  substancesourcematerial
  substancespecification
  supplydelivery
  supplyrequest
  task
  terminologycapabilities
  testreport
  testscript
  valueset
  verificationresult
  visionprescription
)

r4b=(
  # Abstract
  element
  backboneelement
  resource
  domainresource
  # Primitive
  base64binary
  boolean
  canonical
  code
  date
  datetime
  decimal
  id
  instant
  integer
  markdown
  oid
  positiveint
  string
  time
  unsignedint
  uri
  url
  uuid
  data
  address
  age
  annotation
  attachment
  backboneelement
  codeableconcept
  codeablereference
  coding
  contactdetail
  contactpoint
  contributor
  count
  datarequirement
  distance
  dosage
  duration
  element
  elementdefinition
  expression
  extension
  humanname
  identifier
  marketingstatus
  meta
  money
  narrative
  parameterdefinition
  period
  population
  prodcharacteristic
  productshelflife
  quantity
  range
  ratio
  ratiorange
  reference
  relatedartifact
  sampleddata
  signature
  timing
  triggerdefinition
  usagecontext
  # Resources
  account
  activitydefinition
  administrableproductdefinition
  adverseevent
  allergyintolerance
  appointment
  appointmentresponse
  auditevent
  basic
  binary
  biologicallyderivedproduct
  bodystructure
  bundle
  capabilitystatement
  careplan
  careteam
  catalogentry
  chargeitem
  chargeitemdefinition
  citation
  claim
  claimresponse
  clinicalimpression
  clinicalusedefinition
  codesystem
  communication
  communicationrequest
  compartmentdefinition
  composition
  conceptmap
  condition
  consent
  contract
  coverage
  coverageeligibilityrequest
  coverageeligibilityresponse
  detectedissue
  device
  devicedefinition
  devicemetric
  devicerequest
  deviceusestatement
  diagnosticreport
  documentmanifest
  documentreference
  encounter
  endpoint
  enrollmentrequest
  enrollmentresponse
  episodeofcare
  eventdefinition
  evidence
  evidencereport
  evidencevariable
  examplescenario
  explanationofbenefit
  familymemberhistory
  flag
  goal
  graphdefinition
  group
  guidanceresponse
  healthcareservice
  imagingstudy
  immunization
  immunizationevaluation
  immunizationrecommendation
  implementationguide
  ingredient
  insuranceplan
  invoice
  library
  linkage
  list
  location
  manufactureditemdefinition
  measure
  measurereport
  media
  medication
  medicationadministration
  medicationdispense
  medicationknowledge
  medicationrequest
  medicationstatement
  medicinalproductdefinition
  messagedefinition
  messageheader
  molecularsequence
  namingsystem
  nutritionorder
  nutritionproduct
  observation
  observationdefinition
  operationdefinition
  operationoutcome
  organization
  organizationaffiliation
  packagedproductdefinition
  patient
  paymentnotice
  paymentreconciliation
  person
  plandefinition
  practitioner
  practitionerrole
  procedure
  provenance
  questionnaire
  questionnaireresponse
  regulatedauthorization
  relatedperson
  requestgroup
  researchdefinition
  researchelementdefinition
  researchstudy
  researchsubject
  riskassessment
  schedule
  searchparameter
  servicerequest
  slot
  specimen
  specimendefinition
  structuredefinition
  structuremap
  subscription
  subscriptionstatus
  subscriptiontopic
  substance
  substancedefinition
  supplydelivery
  supplyrequest
  task
  terminologycapabilities
  testreport
  testscript
  valueset
  verificationresult
  visionprescription
)

r5=(
  # abstract
  element
  backboneelement
  resource
  domainresource
  canonicalresource
  metadataresource
  # primitive
  base64binary
  boolean
  canonical
  code
  date
  datetime
  decimal
  id
  instant
  integer
  integer64
  markdown
  oid
  positiveint
  string
  time
  unsignedint
  uri
  url
  uuid
  # data types
  address
  age
  annotation
  attachment
  availability
  backboneelement
  backbonetype
  base
  codeableconcept
  codeablereference
  coding
  contactdetail
  contactpoint
  contributor
  count
  datarequirement
  # data type
  distance
  dosage
  duration
  element
  elementdefinition
  expression
  extendedcontactdetail
  extension
  humanname
  identifier
  marketingstatus
  meta
  monetarycomponent
  money
  narrative
  parameterdefinition
  period
  primitivetype
  productshelflife
  quantity
  range
  ratio
  ratiorange
  reference
  relatedartifact
  sampleddata
  signature
  timing
  triggerdefinition
  usagecontext
  virtualservicedetail
  # resource
  account
  activitydefinition
  actordefinition
  administrableproductdefinition
  adverseevent
  allergyintolerance
  appointment
  appointmentresponse
  artifactassessment
  auditevent
  basic
  binary
  biologicallyderivedproduct
  biologicallyderivedproductdispense
  bodystructure
  bundle
  capabilitystatement
  careplan
  careteam
  chargeitem
  chargeitemdefinition
  citation
  claim
  claimresponse
  clinicalimpression
  clinicalusedefinition
  codesystem
  communication
  communicationrequest
  compartmentdefinition
  composition
  conceptmap
  condition
  conditiondefinition
  consent
  contract
  coverage
  coverageeligibilityrequest
  coverageeligibilityresponse
  detectedissue
  device
  deviceassociation
  devicedefinition
  devicedispense
  devicemetric
  devicerequest
  deviceusage
  diagnosticreport
  documentreference
  encounter
  encounterhistory
  endpoint
  enrollmentrequest
  enrollmentresponse
  episodeofcare
  eventdefinition
  evidence
  evidencereport
  evidencevariable
  examplescenario
  explanationofbenefit
  familymemberhistory
  flag
  formularyitem
  genomicstudy
  goal
  graphdefinition
  group
  guidanceresponse
  healthcareservice
  imagingselection
  imagingstudy
  immunization
  immunizationevaluation
  immunizationrecommendation
  implementationguide
  ingredient
  insuranceplan
  inventoryitem
  inventoryreport
  invoice
  library
  linkage
  list
  location
  manufactureditemdefinition
  measure
  measurereport
  medication
  medicationadministration
  medicationdispense
  medicationknowledge
  medicationrequest
  medicationstatement
  medicinalproductdefinition
  messagedefinition
  messageheader
  molecularsequence
  namingsystem
  nutritionintake
  nutritionorder
  nutritionproduct
  observation
  observationdefinition
  operationdefinition
  operationoutcome
  organization
  organizationaffiliation
  packagedproductdefinition
  patient
  paymentnotice
  paymentreconciliation
  permission
  person
  plandefinition
  practitioner
  practitionerrole
  procedure
  provenance
  questionnaire
  questionnaireresponse
  regulatedauthorization
  relatedperson
  requestorchestration
  requirements
  researchstudy
  researchsubject
  riskassessment
  schedule
  searchparameter
  servicerequest
  slot
  specimen
  specimendefinition
  structuredefinition
  structuremap
  subscription
  subscriptionstatus
  subscriptiontopic
  substance
  substancedefinition
  substancenucleicacid
  substancepolymer
  substanceprotein
  substancereferenceinformation
  substancesourcematerial
  supplydelivery
  supplyrequest
  task
  terminologycapabilities
  testplan
  testreport
  testscript
  transport
  valueset
  verificationresult
  visionprescription
)

function download() {
  local resource="$1"
  local version="$2"
  echo "Fetching ${version} ${resource}..."
  curl -s -o "${root_dir}/fhir/${version}/${resource}.json" "https://www.hl7.org/fhir/${version}/${resource}.profile.json"
}

mkdir -p fhir/r4
for r in "${r4[@]}"; do
  download "$r" "r4"
done

mkdir -p fhir/r4b
for r in "${r4[@]}"; do
  download "$r" "r4b"
done

mkdir -p fhir/r5
for r in "${r5[@]}"; do
  download "$r" "r5"
done
