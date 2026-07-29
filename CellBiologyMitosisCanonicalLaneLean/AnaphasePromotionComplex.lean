import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure AnaphasePromotionComplex where
  apcCdc20Activation : Prop
  securinUbiquitination : Prop
  separaseActivation : Prop
  cohesinCleavage : Prop
  sisterChromatidSeparation : Prop
  cyclinBUbiquitination : Prop
  cdk1Inactivation : Prop
  mitoticExit : Prop

structure AnaphasePromotionComplexEvidence (A : AnaphasePromotionComplex) where
  apcCdc20ActivationClosed : A.apcCdc20Activation
  securinUbiquitinationClosed : A.securinUbiquitination
  separaseActivationClosed : A.separaseActivation
  cohesinCleavageClosed : A.cohesinCleavage
  sisterChromatidSeparationClosed : A.sisterChromatidSeparation
  cyclinBUbiquitinationClosed : A.cyclinBUbiquitination
  cdk1InactivationClosed : A.cdk1Inactivation
  mitoticExitClosed : A.mitoticExit

def AnaphasePromotionComplexClosed (A : AnaphasePromotionComplex) : Prop :=
  A.apcCdc20Activation ∧ A.securinUbiquitination ∧ A.separaseActivation ∧
  A.cohesinCleavage ∧ A.sisterChromatidSeparation ∧ A.cyclinBUbiquitination ∧
  A.cdk1Inactivation ∧ A.mitoticExit

theorem anaphase_promotion_complex_closed_from_evidence
    (A : AnaphasePromotionComplex) (E : AnaphasePromotionComplexEvidence A) :
    AnaphasePromotionComplexClosed A := by
  exact And.intro E.apcCdc20ActivationClosed
    (And.intro E.securinUbiquitinationClosed
      (And.intro E.separaseActivationClosed
        (And.intro E.cohesinCleavageClosed
          (And.intro E.sisterChromatidSeparationClosed
            (And.intro E.cyclinBUbiquitinationClosed
              (And.intro E.cdk1InactivationClosed E.mitoticExitClosed))))))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse
