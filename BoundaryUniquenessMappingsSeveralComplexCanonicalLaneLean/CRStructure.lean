import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure CRStructurePackage where
  manifold : Type u
  boundary : Type v
  crDistribution : Type w
  integrability : Prop
  leviForm : Prop
  nondegenerateLeviForm : Prop
  holomorphicExtension : Prop

structure CRStructureEvidence (CR : CRStructurePackage) where
  integrabilityClosed : CR.integrability
  leviFormClosed : CR.leviForm
  nondegenerateLeviFormClosed : CR.nondegenerateLeviForm
  holomorphicExtensionClosed : CR.holomorphicExtension

def CRStructureClosed (CR : CRStructurePackage) : Prop :=
  CR.integrability ∧ CR.leviForm ∧ CR.nondegenerateLeviForm ∧ CR.holomorphicExtension

theorem cr_structure_closed_from_evidence (CR : CRStructurePackage) (E : CRStructureEvidence CR) :
    CRStructureClosed CR := by
  exact And.intro E.integrabilityClosed
    (And.intro E.leviFormClosed
      (And.intro E.nondegenerateLeviFormClosed E.holomorphicExtensionClosed))

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse