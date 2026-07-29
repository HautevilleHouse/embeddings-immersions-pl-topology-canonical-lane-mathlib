import EmbeddingsImmersionsPlTopologyCanonicalLaneLean.PLTopologyObjects

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure WhitneyEmbeddingPackage (M : PLManifold) where
  embeddingDimension : Nat
  embeddingExists : Prop
  genericPosition : Prop
  perturbationTechnique : Prop
  ambientDimension : Prop

structure WhitneyEmbeddingEvidence {M : PLManifold} (W : WhitneyEmbeddingPackage M) where
  embeddingExistsClosed : W.embeddingExists
  genericPositionClosed : W.genericPosition
  perturbationTechniqueClosed : W.perturbationTechnique
  ambientDimensionClosed : W.ambientDimension

def WhitneyEmbeddingClosed {M : PLManifold} (W : WhitneyEmbeddingPackage M) : Prop :=
  W.embeddingExists ∧ W.genericPosition ∧ W.perturbationTechnique ∧ W.ambientDimension

theorem whitney_embedding_closed_from_evidence
    {M : PLManifold} (W : WhitneyEmbeddingPackage M) (E : WhitneyEmbeddingEvidence W) :
    WhitneyEmbeddingClosed W := by
  exact And.intro E.embeddingExistsClosed
    (And.intro E.genericPositionClosed
      (And.intro E.perturbationTechniqueClosed E.ambientDimensionClosed))

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse
