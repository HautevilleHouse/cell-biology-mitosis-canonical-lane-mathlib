import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CellCycleModel where
  cellType : Type
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mPhase : Prop
  phaseOrdering : g1Phase → sPhase → g2Phase → mPhase → Prop
  checkpointRegulation : Prop
  dnaReplicationComplete : Prop
  spindleCheckpointPassed : Prop
  cytokinesisComplete : Prop

structure CellCycleEvidence (M : CellCycleModel) where
  g1PhaseClosed : M.g1Phase
  sPhaseClosed : M.sPhase
  g2PhaseClosed : M.g2Phase
  mPhaseClosed : M.mPhase
  phaseOrderingClosed : M.phaseOrdering M.g1Phase M.sPhase M.g2Phase M.mPhase
  checkpointRegulationClosed : M.checkpointRegulation
  dnaReplicationCompleteClosed : M.dnaReplicationComplete
  spindleCheckpointPassedClosed : M.spindleCheckpointPassed
  cytokinesisCompleteClosed : M.cytokinesisComplete

def CellCycleClosed (M : CellCycleModel) : Prop :=
  M.g1Phase ∧ M.sPhase ∧ M.g2Phase ∧ M.mPhase ∧
  M.phaseOrdering M.g1Phase M.sPhase M.g2Phase M.mPhase ∧
  M.checkpointRegulation ∧ M.dnaReplicationComplete ∧
  M.spindleCheckpointPassed ∧ M.cytokinesisComplete

theorem cell_cycle_closed_from_evidence (M : CellCycleModel) (E : CellCycleEvidence M) :
    CellCycleClosed M := by
  exact And.intro E.g1PhaseClosed
    (And.intro E.sPhaseClosed
      (And.intro E.g2PhaseClosed
        (And.intro E.mPhaseClosed
          (And.intro E.phaseOrderingClosed
            (And.intro E.checkpointRegulationClosed
              (And.intro E.dnaReplicationCompleteClosed
                (And.intro E.spindleCheckpointPassedClosed
                  E.cytokinesisCompleteClosed)))))))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse
