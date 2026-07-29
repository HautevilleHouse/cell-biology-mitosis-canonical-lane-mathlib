import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure RegulatoryKinasesPackage where
  cdk1Activation : Prop
  cyclinBAccumulation : Prop
  wee1Inhibition : Prop
  cdc25Activation : Prop
  apcCCdc20Activation : Prop

structure RegulatoryKinasesEvidence (R : RegulatoryKinasesPackage) where
  cdk1ActivationClosed : R.cdk1Activation
  cyclinBAccumulationClosed : R.cyclinBAccumulation
  wee1InhibitionClosed : R.wee1Inhibition
  cdc25ActivationClosed : R.cdc25Activation
  apcCCdc20ActivationClosed : R.apcCCdc20Activation

def RegulatoryKinasesClosed (R : RegulatoryKinasesPackage) : Prop :=
  R.cdk1Activation ∧ R.cyclinBAccumulation ∧ R.wee1Inhibition ∧
  R.cdc25Activation ∧ R.apcCCdc20Activation

theorem regulatory_kinases_closed_from_evidence (R : RegulatoryKinasesPackage)
    (E : RegulatoryKinasesEvidence R) : RegulatoryKinasesClosed R := by
  exact And.intro E.cdk1ActivationClosed
    (And.intro E.cyclinBAccumulationClosed
      (And.intro E.wee1InhibitionClosed
        (And.intro E.cdc25ActivationClosed E.apcCCdc20ActivationClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse