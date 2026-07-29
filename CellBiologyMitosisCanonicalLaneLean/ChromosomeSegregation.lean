import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure ChromosomeSegregationPackage where
  kinetochoreAttachment : Prop
  spindleAssemblyCheckpoint : Prop
  sisterChromatidSeparation : Prop
  anaphasePromotion : Prop

structure ChromosomeSegregationEvidence (C : ChromosomeSegregationPackage) where
  kinetochoreAttachmentClosed : C.kinetochoreAttachment
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint
  sisterChromatidSeparationClosed : C.sisterChromatidSeparation
  anaphasePromotionClosed : C.anaphasePromotion

def ChromosomeSegregationClosed (C : ChromosomeSegregationPackage) : Prop :=
  C.kinetochoreAttachment ∧ C.spindleAssemblyCheckpoint ∧
  C.sisterChromatidSeparation ∧ C.anaphasePromotion

theorem chromosome_segregation_closed_from_evidence (C : ChromosomeSegregationPackage) (E : ChromosomeSegregationEvidence C) :
    ChromosomeSegregationClosed C := by
  exact And.intro E.kinetochoreAttachmentClosed
    (And.intro E.spindleAssemblyCheckpointClosed
      (And.intro E.sisterChromatidSeparationClosed E.anaphasePromotionClosed))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse