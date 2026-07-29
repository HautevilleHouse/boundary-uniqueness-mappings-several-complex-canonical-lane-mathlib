import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure AdmissibleClass where
  object : BoundaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundaryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
