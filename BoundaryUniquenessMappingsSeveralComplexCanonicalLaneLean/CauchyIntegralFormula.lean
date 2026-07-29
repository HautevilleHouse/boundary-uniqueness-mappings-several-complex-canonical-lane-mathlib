import BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.AdmissibleClass

/-!
# Cauchy Integral Formula Package
-/

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctions : Type v
  cauchyIntegralRepresentation : Prop
  cauchyEstimates : Prop
  identityTheorem : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  cauchyIntegralRepresentationClosed : C.cauchyIntegralRepresentation
  cauchyEstimatesClosed : C.cauchyEstimates
  identityTheoremClosed : C.identityTheorem

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyIntegralRepresentation ∧ C.cauchyEstimates ∧ C.identityTheorem

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.cauchyIntegralRepresentationClosed (And.intro E.cauchyEstimatesClosed E.identityTheoremClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse