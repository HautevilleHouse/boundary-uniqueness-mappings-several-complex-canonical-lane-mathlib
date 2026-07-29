import BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.RiemannMappingTheorem

/-!
# Analytic Continuation Package
-/

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure AnalyticContinuationPackage where
  openSet : Type u
  topology : TopologicalSpace openSet
  complexStructure : ComplexStructure openSet
  functionDefined : openSet → ℂ
  analyticOnOpenSet : Prop
  boundaryAccessible : Set openSet
  continuationExists : (openSet → ℂ) → Prop
  uniquenessAcrossBoundary : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  analyticOnOpenSetClosed : A.analyticOnOpenSet
  continuationExistsClosed : A.continuationExists A.functionDefined
  uniquenessAcrossBoundaryClosed : A.uniquenessAcrossBoundary

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.analyticOnOpenSet ∧ A.continuationExists A.functionDefined ∧ A.uniquenessAcrossBoundary

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.analyticOnOpenSetClosed (And.intro E.continuationExistsClosed E.uniquenessAcrossBoundaryClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse