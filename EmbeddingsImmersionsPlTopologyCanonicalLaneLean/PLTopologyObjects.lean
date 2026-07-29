import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure PLManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  plStructure : Prop
  dimension : Nat
  compactWithoutBoundary : Prop

default PLManifold

structure EmbeddingImmersionObject where
  source : PLManifold
  target : PLManifold
  map : source.carrier → target.carrier
  isEmbedding : Prop
  isImmersion : Prop
  isPL : Prop
  conclusion : isEmbedding ∧ isImmersion ∧ isPL

def EmbeddingWitnessClosed (O : EmbeddingImmersionObject) : Prop :=
  O.conclusion

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse
