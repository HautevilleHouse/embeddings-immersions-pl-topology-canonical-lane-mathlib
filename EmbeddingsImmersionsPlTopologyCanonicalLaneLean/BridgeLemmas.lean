import HautevilleHouse.EmbeddingsImmersionsPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PLWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse