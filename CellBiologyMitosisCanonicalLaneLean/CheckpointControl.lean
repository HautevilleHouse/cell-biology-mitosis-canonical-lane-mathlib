import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CheckpointControlPackage where
  g2MCheckpoint : Prop
  metaphaseCheckpoint : Prop
  spindleAssemblyCheckpoint : Prop
  satisfactionSignals : Prop

structure CheckpointControlEvidence (C : CheckpointControlPackage) where
  g2MCheckpointClosed : C.g2MCheckpoint
  metaphaseCheckpointClosed : C.metaphaseCheckpoint
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint
  satisfactionSignalsClosed : C.satisfactionSignals

def CheckpointControlClosed (C : CheckpointControlPackage) : Prop :=
  C.g2MCheckpoint ∧ C.metaphaseCheckpoint ∧
  C.spindleAssemblyCheckpoint ∧ C.satisfactionSignals

theorem checkpoint_control_closed_from_evidence (C : CheckpointControlPackage)
    (E : CheckpointControlEvidence C) : CheckpointControlClosed C := by
  exact And.intro E.g2MCheckpointClosed
    (And.intro E.metaphaseCheckpointClosed
      (And.intro E.spindleAssemblyCheckpointClosed E.satisfactionSignalsClosed))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse