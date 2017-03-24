/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadora;

/**
 *
 * @author clara
 */
public class Calculadora {
    public int calcular(int n1, int n2, String operacio) throws RestaNegativaException, DivisioInfinitaException, DivisioIndeterminada {
        int resultat = 0;
        switch (operacio) {
            case "+":
                resultat = n1 + n2;
                break;
            case "-":
                resultat = n1 - n2;
                if (n1 < n2) { 
                    throw new RestaNegativaException();
                }
                break;
            case "*":
                resultat = n1 * n2;
                break;
            default:
                resultat = n1 / n2;
                if (n1 == 0 && n2 == 0) {
                    throw new DivisioIndeterminada();
                } else if (n2 == 0) {
                    throw new DivisioInfinitaException();
                }
        }
        
        return resultat;
    }
}
