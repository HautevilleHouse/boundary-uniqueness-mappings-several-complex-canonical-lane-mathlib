import canonicalLaneMathlib.AdmissibleClass
import .CRStructure

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure BoundaryUniquenessAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  boundaryId : Prop
  holomorphicMapping : Prop
  mappingExtends : Prop
  uniquenessOnBoundary : Prop
  conclusion : uniquenessOnBoundary

def BoundaryUniquenessWitnessClosed (O : BoundaryUniquenessAdmittedObject) : Prop :=
  O.uniquenessOnBoundary

structure BoundaryUniquenessPackage (CR : CRStructurePackage) where
  boundaryMappingExists : Prop
  uniquenessUnderExtension : Prop
  nondegenerateBoundary : Prop
  mappingDeterminedByBoundary : Prop

structure BoundaryUniquenessEvidence {CR : CRStructurePackage} (BU : BoundaryUniquenessPackage CR) where
  boundaryMappingExistsClosed : BU.boundaryMappingExists
  uniquenessUnderExtensionClosed : BU.uniquenessUnderExtension
  nondegenerateBoundaryClosed : BU.nondegenerateBoundary
  mappingDeterminedByBoundaryClosed : BU.mappingDeterminedByBoundary

def BoundaryUniquenessClosed {CR : CRStructurePackage} (BU : BoundaryUniquenessPackage CR) : Prop :=
  BU.boundaryMappingExists ∧ BU.uniquenessUnderExtension ∧
  BU.nondegenerateBoundary ∧ BU.mappingDeterminedByBoundary

theorem boundary_uniqueness_closed_from_evidence
    {CR : CRStructurePackage} (BU : BoundaryUniquenessPackage CR)
    (E : BoundaryUniquenessEvidence BU) : BoundaryUniquenessClosed BU := by
  exact And.intro E.boundaryMappingExistsClosed
    (And.intro E.uniquenessUnderExtensionClosed
      (And.intro E.nondegenerateBoundaryClosed E.mappingDeterminedByBoundaryClosed))

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse