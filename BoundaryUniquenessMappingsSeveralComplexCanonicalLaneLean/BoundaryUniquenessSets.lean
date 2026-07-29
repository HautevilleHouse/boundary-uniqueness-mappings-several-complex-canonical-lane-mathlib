import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.HolomorphicExtension

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure BoundaryUniquenessSetsPackage {P : CRStructurePackage} {H : HolomorphicExtensionPackage P} where
  uniquenessSet : Set (BoundaryUniquenessAdmittedObject.space)
  boundaryCRFunctions : Type u
  uniquenessTheorem : Prop
  boundaryDetermination : Prop

structure BoundaryUniquenessSetsEvidence {P : CRStructurePackage} {H : HolomorphicExtensionPackage P}
    (B : BoundaryUniquenessSetsPackage P H) where
  uniquenessSetClosed : B.uniquenessTheorem
  boundaryDeterminationClosed : B.boundaryDetermination

def BoundaryUniquenessSetsClosed {P : CRStructurePackage} {H : HolomorphicExtensionPackage P}
    (B : BoundaryUniquenessSetsPackage P H) : Prop :=
  B.uniquenessTheorem ∧ B.boundaryDetermination

theorem boundary_uniqueness_sets_closed_from_evidence {P : CRStructurePackage} {H : HolomorphicExtensionPackage P}
    (B : BoundaryUniquenessSetsPackage P H) (E : BoundaryUniquenessSetsEvidence B) :
    BoundaryUniquenessSetsClosed B := by
  exact And.intro E.uniquenessSetClosed E.boundaryDeterminationClosed

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse