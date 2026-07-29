import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure SimplyConnectedDomain (X : Type _) [TopologicalSpace X] [ComplexManifold X] where
  isSimplyConnected : Prop
  boundaryNonempty : Prop

structure RiemannMappingPackage (s : SimplyConnectedDomain ℂ) where
  conformalMap : ℂ → ℂ
  mapsToUnitDisc : Prop
  conformalEquivalence : Prop
  uniquenessUpToAutomorphism : Prop

structure RiemannMappingEvidence (s : SimplyConnectedDomain ℂ) (R : RiemannMappingPackage s) where
  conformalMapClosed : R.conformalMap
  mapsToUnitDiscClosed : R.mapsToUnitDisc
  conformalEquivalenceClosed : R.conformalEquivalence
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism

def RiemannMappingClosed (s : SimplyConnectedDomain ℂ) (R : RiemannMappingPackage s) : Prop :=
  R.conformalMap ∧ R.mapsToUnitDisc ∧ R.conformalEquivalence ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_closed_from_evidence (s : SimplyConnectedDomain ℂ) (R : RiemannMappingPackage s) (E : RiemannMappingEvidence s R) :
    RiemannMappingClosed s R :=
  And.intro E.conformalMapClosed (And.intro E.mapsToUnitDiscClosed (And.intro E.conformalEquivalenceClosed E.uniquenessUpToAutomorphismClosed))

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse