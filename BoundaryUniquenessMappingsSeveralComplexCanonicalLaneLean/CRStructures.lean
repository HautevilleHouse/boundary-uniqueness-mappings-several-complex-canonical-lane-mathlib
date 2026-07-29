import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure CRStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  crDimension : Nat
  crCodimension : Nat
  lewiCondition : Prop
  integrabilityCondition : Prop
  cauchyRiemannOperator : Type v

structure CRStructureEvidence (P : CRStructurePackage) where
  lewiConditionClosed : P.lewiCondition
  integrabilityConditionClosed : P.integrabilityCondition

def CRStructureClosed (P : CRStructurePackage) : Prop :=
  P.lewiCondition ∧ P.integrabilityCondition

theorem cr_structure_closed_from_evidence (P : CRStructurePackage) (E : CRStructureEvidence P) :
    CRStructureClosed P := by
  exact And.intro E.lewiConditionClosed E.integrabilityConditionClosed

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse