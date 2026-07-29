import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure HolomorphicFunction (U : Type _) [TopologicalSpace U] [ComplexManifold U] where
  domain : U
  codomain : ℂ
  isHolomorphic : Prop
  cauchyIntegralFormula : Prop

structure CauchyTheoryPackage where
  holomorphicFunctions : Type (u+1)
  cauchyIntegralTheorem : Prop
  cauchyIntegralFormula : Prop
  powerSeriesExpansion : Prop
  identityTheorem : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralTheoremClosed : C.cauchyIntegralTheorem
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  identityTheoremClosed : C.identityTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralTheorem ∧ C.cauchyIntegralFormula ∧ C.powerSeriesExpansion ∧ C.identityTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C :=
  And.intro E.cauchyIntegralTheoremClosed (And.intro E.cauchyIntegralFormulaClosed (And.intro E.powerSeriesExpansionClosed E.identityTheoremClosed))

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse