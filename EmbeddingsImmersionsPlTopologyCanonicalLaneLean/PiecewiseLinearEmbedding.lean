import HautevilleHouse.EmbeddingsImmersionsPlTopologyCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure PiecewiseLinearEmbedding (K L : SimplicialComplex) where
  vertexMap : K.vertices → L.vertices
  simplexMap : ∀ (s : List K.vertices), s ∈ K.simplices → List.map vertexMap s ∈ L.simplices
  plContinuity : Prop
  immersionCondition : Prop
  embeddingCondition : Prop

structure PLImmersionProperty (K L : SimplicialComplex) (f : PiecewiseLinearEmbedding K L) where
  plContinuityClosed : f.plContinuity
  immersionConditionClosed : f.immersionCondition

def PLImmersionClosed (K L : SimplicialComplex) (f : PiecewiseLinearEmbedding K L) : Prop :=
  f.plContinuity ∧ f.immersionCondition

theorem pl_immersion_closed_from_evidence (K L : SimplicialComplex) (f : PiecewiseLinearEmbedding K L) (E : PLImmersionProperty K L f) :
    PLImmersionClosed K L f := by
  exact And.intro E.plContinuityClosed E.immersionConditionClosed

def PLEmbeddingClosed (K L : SimplicialComplex) (f : PiecewiseLinearEmbedding K L) : Prop :=
  PLImmersionClosed K L f ∧ f.embeddingCondition

theorem pl_embedding_closed_from_immersion (K L : SimplicialComplex) (f : PiecewiseLinearEmbedding K L) (I : PLImmersionProperty K L f) (emb : f.embeddingCondition) :
    PLEmbeddingClosed K L f := by
  exact And.intro (pl_immersion_closed_from_evidence K L f I) emb

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse