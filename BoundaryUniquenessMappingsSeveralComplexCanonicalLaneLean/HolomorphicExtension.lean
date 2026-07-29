import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.CRStructures

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure HolomorphicExtensionPackage {P : CRStructurePackage} where
  boundaryValue : Type u
  extensionTheorem : Prop
  uniqueExtension : Prop
  maximalExtensionDomain : Prop

structure HolomorphicExtensionEvidence {P : CRStructurePackage} (H : HolomorphicExtensionPackage P) where
  extensionTheoremClosed : H.extensionTheorem
  uniqueExtensionClosed : H.uniqueExtension
  maximalExtensionDomainClosed : H.maximalExtensionDomain

def HolomorphicExtensionClosed {P : CRStructurePackage} (H : HolomorphicExtensionPackage P) : Prop :=
  H.extensionTheorem ∧ H.uniqueExtension ∧ H.maximalExtensionDomain

theorem holomorphic_extension_closed_from_evidence {P : CRStructurePackage}
    (H : HolomorphicExtensionPackage P) (E : HolomorphicExtensionEvidence H) :
    HolomorphicExtensionClosed H := by
  exact And.intro E.extensionTheoremClosed (And.intro E.uniqueExtensionClosed E.maximalExtensionDomainClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse