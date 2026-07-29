import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
