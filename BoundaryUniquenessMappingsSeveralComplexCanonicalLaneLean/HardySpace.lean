import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure HardySpace (M : ComplexManifold) where
  exponent : ℕ
  functions : Set (HolomorphicFunction M ℂ)
  normed : Prop
  boundaryValuesInLp : Prop

structure HardySpaceEvidence (M : ComplexManifold) (H : HardySpace M) where
  normedClosed : H.normed
  boundaryValuesInLpClosed : H.boundaryValuesInLp

def HardySpaceClosed (M : ComplexManifold) (H : HardySpace M) : Prop :=
  H.normed ∧ H.boundaryValuesInLp

theorem hardy_space_closed_from_evidence (M : ComplexManifold) (H : HardySpace M) (E : HardySpaceEvidence M H) : HardySpaceClosed M H :=
  And.intro E.normedClosed E.boundaryValuesInLpClosed

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse