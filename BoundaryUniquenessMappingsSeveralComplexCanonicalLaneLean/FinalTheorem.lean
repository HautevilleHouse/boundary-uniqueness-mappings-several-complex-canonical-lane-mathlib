import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

def ConstrainedBoundaryUniquenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_uniqueness_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryUniquenessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
