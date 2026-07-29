import BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.CauchyIntegralFormula

/-!
# Riemann Mapping Theorem Package
-/

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  simplyConnected : Prop
  boundedDomain : Prop
  conformalMapToDisc : Prop
  boundaryContinuity : Prop
  uniquenessBoundaryMap : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  conformalMapToDiscClosed : R.conformalMapToDisc
  boundaryContinuityClosed : R.boundaryContinuity
  uniquenessBoundaryMapClosed : R.uniquenessBoundaryMap

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.conformalMapToDisc ∧ R.boundaryContinuity ∧ R.uniquenessBoundaryMap

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.conformalMapToDiscClosed (And.intro E.boundaryContinuityClosed E.uniquenessBoundaryMapClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse