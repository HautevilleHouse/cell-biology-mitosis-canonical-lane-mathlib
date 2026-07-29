import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure NucleusEnvelopePackage where
  nuclearLamina : Prop
  nuclearPoreComplex : Prop
  intactDuringInterphase : Prop
  disassemblesDuringProphase : Prop
  reassemblesDuringTelophase : Prop

structure NucleusEnvelopeEvidence (N : NucleusEnvelopePackage) where
  nuclearLaminaClosed : N.nuclearLamina
  nuclearPoreComplexClosed : N.nuclearPoreComplex
  intactDuringInterphaseClosed : N.intactDuringInterphase
  disassemblesDuringProphaseClosed : N.disassemblesDuringProphase
  reassemblesDuringTelophaseClosed : N.reassemblesDuringTelophase

def NucleusEnvelopeClosed (N : NucleusEnvelopePackage) : Prop :=
  N.nuclearLamina ∧ N.nuclearPoreComplex ∧ N.intactDuringInterphase ∧
  N.disassemblesDuringProphase ∧ N.reassemblesDuringTelophase

theorem nucleus_envelope_closed_from_evidence (N : NucleusEnvelopePackage)
    (E : NucleusEnvelopeEvidence N) : NucleusEnvelopeClosed N := by
  exact And.intro E.nuclearLaminaClosed
    (And.intro E.nuclearPoreComplexClosed
      (And.intro E.intactDuringInterphaseClosed
        (And.intro E.disassemblesDuringProphaseClosed E.reassemblesDuringTelophaseClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse