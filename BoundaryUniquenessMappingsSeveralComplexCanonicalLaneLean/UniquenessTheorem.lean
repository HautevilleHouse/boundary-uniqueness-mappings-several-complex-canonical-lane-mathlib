import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure UniquenessTheoremPackage (M : ComplexManifold) (B : BoundaryBehaviorPackage M) where
  holomorphicFunctionsAgreeOnBoundary : Prop
  internalAgreement : Prop
  boundaryUniquenessHolds : Prop

structure UniquenessTheoremEvidence (M : ComplexManifold) (B : BoundaryBehaviorPackage M) (U : UniquenessTheoremPackage M B) where
  holomorphicFunctionsAgreeOnBoundaryClosed : U.holomorphicFunctionsAgreeOnBoundary
  internalAgreementClosed : U.internalAgreement
  boundaryUniquenessHoldsClosed : U.boundaryUniquenessHolds

def UniquenessTheoremClosed (M : ComplexManifold) (B : BoundaryBehaviorPackage M) (U : UniquenessTheoremPackage M B) : Prop :=
  U.holomorphicFunctionsAgreeOnBoundary ∧ U.internalAgreement ∧ U.boundaryUniquenessHolds

theorem uniqueness_theorem_closed_from_evidence (M : ComplexManifold) (B : BoundaryBehaviorPackage M) (U : UniquenessTheoremPackage M B) (E : UniquenessTheoremEvidence M B U) : UniquenessTheoremClosed M B U :=
  And.intro E.holomorphicFunctionsAgreeOnBoundaryClosed (And.intro E.internalAgreementClosed E.boundaryUniquenessHoldsClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse