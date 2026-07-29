import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BoundarySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure BoundaryAdmittedObject where
  space : BoundarySpace
  boundaryComponent : BoundarySpace
  holomorphicExtensionExists : Prop
  uniquenessHolds : Prop
  conclusion : uniquenessHolds

def BoundaryWitnessClosed (O : BoundaryAdmittedObject) : Prop :=
  O.uniquenessHolds

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
