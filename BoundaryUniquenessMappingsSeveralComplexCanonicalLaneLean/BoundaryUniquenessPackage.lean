import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure BoundaryMapping (U V : Type _) [TopologicalSpace U] [TopologicalSpace V] [ComplexManifold U] [ComplexManifold V] where
  sourceDomain : U
  targetDomain : V
  map : U → V
  boundaryPreserving : Prop
  holomorphicOnInterior : Prop

structure BoundaryUniquenessPackage (f g : BoundaryMapping ℂ ℂ) where
  interiorAgreement : Prop
  boundaryValuesEqual : Prop
  uniquenessConclusion : Prop

structure BoundaryUniquenessEvidence (f g : BoundaryMapping ℂ ℂ) (B : BoundaryUniquenessPackage f g) where
  interiorAgreementClosed : B.interiorAgreement
  boundaryValuesEqualClosed : B.boundaryValuesEqual
  uniquenessConclusionClosed : B.uniquenessConclusion

def BoundaryUniquenessClosed (f g : BoundaryMapping ℂ ℂ) (B : BoundaryUniquenessPackage f g) : Prop :=
  B.interiorAgreement ∧ B.boundaryValuesEqual ∧ B.uniquenessConclusion

theorem boundary_uniqueness_closed_from_evidence (f g : BoundaryMapping ℂ ℂ) (B : BoundaryUniquenessPackage f g) (E : BoundaryUniquenessEvidence f g B) :
    BoundaryUniquenessClosed f g B :=
  And.intro E.interiorAgreementClosed (And.intro E.boundaryValuesEqualClosed E.uniquenessConclusionClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse