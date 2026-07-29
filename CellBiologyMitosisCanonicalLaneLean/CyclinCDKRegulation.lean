import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CyclinCDKRegulation where
  cyclinDType : Type
  cyclinEType : Type
  cyclinAType : Type
  cyclinBType : Type
  cdk2 : Type
  cdk4 : Type
  cdk1 : Type
  cyclinD_cdk4_active : Prop
  cyclinE_cdk2_active : Prop
  cyclinA_cdk2_active : Prop
  cyclinB_cdk1_active : Prop
  activationOrdering : cyclinD_cdk4_active → cyclinE_cdk2_active → cyclinA_cdk2_active → cyclinB_cdk1_active → Prop
  p21Inhibition : Prop
  p27Inhibition : Prop
  wee1Kinase : Prop
  cdc25Activation : Prop

def CyclinCDKRegulationClosed (R : CyclinCDKRegulation) : Prop :=
  R.cyclinD_cdk4_active ∧ R.cyclinE_cdk2_active ∧
  R.cyclinA_cdk2_active ∧ R.cyclinB_cdk1_active ∧
  R.activationOrdering R.cyclinD_cdk4_active R.cyclinE_cdk2_active R.cyclinA_cdk2_active R.cyclinB_cdk1_active ∧
  R.p21Inhibition ∧ R.p27Inhibition ∧ R.wee1Kinase ∧ R.cdc25Activation

structure CyclinCDKRegulationEvidence (R : CyclinCDKRegulation) where
  cyclinD_cdk4_activeClosed : R.cyclinD_cdk4_active
  cyclinE_cdk2_activeClosed : R.cyclinE_cdk2_active
  cyclinA_cdk2_activeClosed : R.cyclinA_cdk2_active
  cyclinB_cdk1_activeClosed : R.cyclinB_cdk1_active
  activationOrderingClosed : R.activationOrdering R.cyclinD_cdk4_active R.cyclinE_cdk2_active R.cyclinA_cdk2_active R.cyclinB_cdk1_active
  p21InhibitionClosed : R.p21Inhibition
  p27InhibitionClosed : R.p27Inhibition
  wee1KinaseClosed : R.wee1Kinase
  cdc25ActivationClosed : R.cdc25Activation

theorem cyclin_cdk_regulation_closed_from_evidence (R : CyclinCDKRegulation) (E : CyclinCDKRegulationEvidence R) :
    CyclinCDKRegulationClosed R := by
  exact And.intro E.cyclinD_cdk4_activeClosed
    (And.intro E.cyclinE_cdk2_activeClosed
      (And.intro E.cyclinA_cdk2_activeClosed
        (And.intro E.cyclinB_cdk1_activeClosed
          (And.intro E.activationOrderingClosed
            (And.intro E.p21InhibitionClosed
              (And.intro E.p27InhibitionClosed
                (And.intro E.wee1KinaseClosed E.cdc25ActivationClosed)))))))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse
