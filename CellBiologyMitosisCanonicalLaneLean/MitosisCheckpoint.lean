import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMitosisCanonicalLaneLean.CellCycleRegulation

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure MitosisCheckpointPackage {C : CellCycleRegulationPackage}
    (D : DNAReplicationPackage C) where
  spindleAssemblyCheckpoint : Prop
  metaphasePlateAlignment : Prop
  anaphaseEntryTrigger : Prop
  checkpointSatisfied : Prop
  checkpointClosed : checkpointSatisfied

structure CheckpointEvidence {C : CellCycleRegulationPackage}
    {D : DNAReplicationPackage C} (M : MitosisCheckpointPackage D) where
  spindleAssemblyCheckpointClosed : M.spindleAssemblyCheckpoint
  metaphasePlateAlignmentClosed : M.metaphasePlateAlignment
  anaphaseEntryTriggerClosed : M.anaphaseEntryTrigger

def MitosisCheckpointClosed {C : CellCycleRegulationPackage}
    {D : DNAReplicationPackage C} (M : MitosisCheckpointPackage D) : Prop :=
  M.spindleAssemblyCheckpoint ∧ M.metaphasePlateAlignment ∧ M.anaphaseEntryTrigger

theorem mitosis_checkpoint_closed_from_evidence
    {C : CellCycleRegulationPackage} {D : DNAReplicationPackage C}
    (M : MitosisCheckpointPackage D) (E : CheckpointEvidence M) :
    MitosisCheckpointClosed M := by
  exact And.intro E.spindleAssemblyCheckpointClosed
    (And.intro E.metaphasePlateAlignmentClosed E.anaphaseEntryTriggerClosed)

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse