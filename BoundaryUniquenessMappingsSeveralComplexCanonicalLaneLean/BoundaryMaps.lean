import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.AdmissibleClass

/-!
# Boundary Uniqueness Mappings Package
-/

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure BoundaryMapsPackage where
  sourceDomain : Type
  targetDomain : Type
  holomorphicMap : sourceDomain → targetDomain
  boundaryContinuation : Prop
  uniquenessProperty : Prop
  boundaryMapClosed : Prop

structure BoundaryMapsEvidence (B : BoundaryMapsPackage) where
  boundaryContinuationClosed : B.boundaryContinuation
  uniquenessPropertyClosed : B.uniquenessProperty
  boundaryMapClosed : B.boundaryMapClosed

def BoundaryMapsClosed (B : BoundaryMapsPackage) : Prop :=
  B.boundaryContinuation ∧ B.uniquenessProperty ∧ B.boundaryMapClosed

theorem boundary_maps_closed_from_evidence (B : BoundaryMapsPackage) (E : BoundaryMapsEvidence B) :
    BoundaryMapsClosed B := by
  exact And.intro E.boundaryContinuationClosed
    (And.intro E.uniquenessPropertyClosed E.boundaryMapClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
