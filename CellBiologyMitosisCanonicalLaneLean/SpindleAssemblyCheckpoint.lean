import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure SpindleAssemblyCheckpointPackage where
  unattachedKinetochoreSignal : Prop
  mad2Activation : Prop
  cdc20Inhibition : Prop
  anaphasePromotion : Prop
  tensionSensing : Prop

structure SpindleAssemblyCheckpointEvidence (S : SpindleAssemblyCheckpointPackage) where
  unattachedKinetochoreSignalClosed : S.unattachedKinetochoreSignal
  mad2ActivationClosed : S.mad2Activation
  cdc20InhibitionClosed : S.cdc20Inhibition
  anaphasePromotionClosed : S.anaphasePromotion
  tensionSensingClosed : S.tensionSensing

def SpindleAssemblyCheckpointClosed (S : SpindleAssemblyCheckpointPackage) : Prop :=
  S.unattachedKinetochoreSignal ∧ S.mad2Activation ∧ S.cdc20Inhibition ∧ S.anaphasePromotion ∧ S.tensionSensing

theorem spindle_assembly_checkpoint_closed_from_evidence (S : SpindleAssemblyCheckpointPackage) (E : SpindleAssemblyCheckpointEvidence S) : SpindleAssemblyCheckpointClosed S := by
  exact And.intro E.unattachedKinetochoreSignalClosed
    (And.intro E.mad2ActivationClosed
      (And.intro E.cdc20InhibitionClosed
        (And.intro E.anaphasePromotionClosed E.tensionSensingClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse