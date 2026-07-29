import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CytokinesisContractileRing where
  actinFilamentPolymerization : Prop
  myosinIIMotorActivity : Prop
  rhoGTPaseSignaling : Prop
  ringFormation : Prop
  ringContraction : Prop
  cleavageFurrowIngression : Prop
  midbodyFormation : Prop
  abscission : Prop

def CytokinesisContractileRingClosed (C : CytokinesisContractileRing) : Prop :=
  C.actinFilamentPolymerization ∧ C.myosinIIMotorActivity ∧
  C.rhoGTPaseSignaling ∧ C.ringFormation ∧ C.ringContraction ∧
  C.cleavageFurrowIngression ∧ C.midbodyFormation ∧ C.abscission

structure CytokinesisContractileRingEvidence (C : CytokinesisContractileRing) where
  actinFilamentPolymerizationClosed : C.actinFilamentPolymerization
  myosinIIMotorActivityClosed : C.myosinIIMotorActivity
  rhoGTPaseSignalingClosed : C.rhoGTPaseSignaling
  ringFormationClosed : C.ringFormation
  ringContractionClosed : C.ringContraction
  cleavageFurrowIngressionClosed : C.cleavageFurrowIngression
  midbodyFormationClosed : C.midbodyFormation
  abscissionClosed : C.abscission

theorem cytokinesis_contractile_ring_closed_from_evidence
    (C : CytokinesisContractileRing) (E : CytokinesisContractileRingEvidence C) :
    CytokinesisContractileRingClosed C := by
  exact And.intro E.actinFilamentPolymerizationClosed
    (And.intro E.myosinIIMotorActivityClosed
      (And.intro E.rhoGTPaseSignalingClosed
        (And.intro E.ringFormationClosed
          (And.intro E.ringContractionClosed
            (And.intro E.cleavageFurrowIngressionClosed
              (And.intro E.midbodyFormationClosed E.abscissionClosed))))))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse
