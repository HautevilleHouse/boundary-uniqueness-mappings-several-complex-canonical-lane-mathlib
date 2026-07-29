import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

structure BoundaryBehaviorPackage (M : ComplexManifold) where
  radialLimitsExist : Prop
  nontangentialLimitsExist : Prop
  boundaryValuesDetermineFunction : Prop

structure BoundaryBehaviorEvidence (M : ComplexManifold) (B : BoundaryBehaviorPackage M) where
  radialLimitsExistClosed : B.radialLimitsExist
  nontangentialLimitsExistClosed : B.nontangentialLimitsExist
  boundaryValuesDetermineFunctionClosed : B.boundaryValuesDetermineFunction

def BoundaryBehaviorClosed (M : ComplexManifold) (B : BoundaryBehaviorPackage M) : Prop :=
  B.radialLimitsExist ∧ B.nontangentialLimitsExist ∧ B.boundaryValuesDetermineFunction

theorem boundary_behavior_closed_from_evidence (M : ComplexManifold) (B : BoundaryBehaviorPackage M) (E : BoundaryBehaviorEvidence M B) : BoundaryBehaviorClosed M B :=
  And.intro E.radialLimitsExistClosed (And.intro E.nontangentialLimitsExistClosed E.boundaryValuesDetermineFunctionClosed)

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse