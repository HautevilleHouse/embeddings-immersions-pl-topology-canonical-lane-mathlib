import HautevilleHouse.EmbeddingsImmersionsPlTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : PLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PLWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse