import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure SpindleAssemblyCheckpointPackage where
  unattachedKinetochoreSignal : Prop
  mad2Activation : Prop
  cdc20Inhibition : Prop
  anaphaseWait : Prop

structure SpindleAssemblyCheckpointEvidence (S : SpindleAssemblyCheckpointPackage) where
  unattachedKinetochoreSignalClosed : S.unattachedKinetochoreSignal
  mad2ActivationClosed : S.mad2Activation
  cdc20InhibitionClosed : S.cdc20Inhibition
  anaphaseWaitClosed : S.anaphaseWait

def SpindleAssemblyCheckpointClosed (S : SpindleAssemblyCheckpointPackage) : Prop :=
  S.unattachedKinetochoreSignal ∧ S.mad2Activation ∧ S.cdc20Inhibition ∧ S.anaphaseWait

theorem spindle_assembly_checkpoint_closed_from_evidence (S : SpindleAssemblyCheckpointPackage) (E : SpindleAssemblyCheckpointEvidence S) : SpindleAssemblyCheckpointClosed S := by
  exact And.intro E.unattachedKinetochoreSignalClosed (And.intro E.mad2ActivationClosed (And.intro E.cdc20InhibitionClosed E.anaphaseWaitClosed))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse