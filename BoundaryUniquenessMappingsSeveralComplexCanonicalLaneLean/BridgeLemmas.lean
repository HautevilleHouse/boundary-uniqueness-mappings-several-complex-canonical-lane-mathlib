import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryUniquenessMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
