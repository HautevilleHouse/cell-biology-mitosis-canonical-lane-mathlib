import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure ChromosomeSegregationPackage where
  kinetochoreAttachment : Prop
  spindlePoleSeparation : ℝ
  chromosomeAlignment : Prop
  anaphasePromotion : Prop
  segregationFidelity : Prop

structure ChromosomeSegregationEvidence (S : ChromosomeSegregationPackage) where
  kinetochoreAttachmentClosed : S.kinetochoreAttachment
  spindlePoleSeparationPositive : S.spindlePoleSeparation > 0.0
  chromosomeAlignmentClosed : S.chromosomeAlignment
  anaphasePromotionClosed : S.anaphasePromotion
  segregationFidelityClosed : S.segregationFidelity

def ChromosomeSegregationClosed (S : ChromosomeSegregationPackage) : Prop :=
  S.kinetochoreAttachment ∧ S.chromosomeAlignment ∧ S.anaphasePromotion ∧ S.segregationFidelity

theorem chromosome_segregation_closed_from_evidence (S : ChromosomeSegregationPackage) (E : ChromosomeSegregationEvidence S) : ChromosomeSegregationClosed S := by
  exact And.intro E.kinetochoreAttachmentClosed (And.intro E.chromosomeAlignmentClosed (And.intro E.anaphasePromotionClosed E.segregationFidelityClosed))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse