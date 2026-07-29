import CellBiologyMitosisCanonicalLaneLean.ChromosomeSegregation

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CytokinesisFinalPackage {C : CellCycleRegulationPackage}
    {D : DNAReplicationPackage C} {M : MitosisCheckpointPackage D}
    {K : KinetochoreAttachmentPackage M} {S : ChromosomeSegregationPackage K}
    (F : CleavageFurrowAssemblyPackage S) where
  contractileRingConstriction : Prop
  membraneFission : Prop
  daughterCellSeparation : Prop
  cytokinesisComplete : Prop
  cytokinesisClosed : cytokinesisComplete

structure CytokinesisEvidence {C : CellCycleRegulationPackage}
    {D : DNAReplicationPackage C} {M : MitosisCheckpointPackage D}
    {K : KinetochoreAttachmentPackage M} {S : ChromosomeSegregationPackage K}
    {F : CleavageFurrowAssemblyPackage S}
    (Z : CytokinesisFinalPackage F) where
  contractileRingConstrictionClosed : Z.contractileRingConstriction
  membraneFissionClosed : Z.membraneFission
  daughterCellSeparationClosed : Z.daughterCellSeparation

def CytokinesisFinalClosed {C : CellCycleRegulationPackage}
    {D : DNAReplicationPackage C} {M : MitosisCheckpointPackage D}
    {K : KinetochoreAttachmentPackage M} {S : ChromosomeSegregationPackage K}
    {F : CleavageFurrowAssemblyPackage S}
    (Z : CytokinesisFinalPackage F) : Prop :=
  Z.contractileRingConstriction ∧ Z.membraneFission ∧ Z.daughterCellSeparation

theorem cytokinesis_final_closed_from_evidence
    {C : CellCycleRegulationPackage} {D : DNAReplicationPackage C}
    {M : MitosisCheckpointPackage D} {K : KinetochoreAttachmentPackage M}
    {S : ChromosomeSegregationPackage K} {F : CleavageFurrowAssemblyPackage S}
    (Z : CytokinesisFinalPackage F) (E : CytokinesisEvidence Z) :
    CytokinesisFinalClosed Z := by
  exact And.intro E.contractileRingConstrictionClosed
    (And.intro E.membraneFissionClosed E.daughterCellSeparationClosed)

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse