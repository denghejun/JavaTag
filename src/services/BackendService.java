package services;

import models.PairAtom;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hjdeng on 4/5/17.
 */
public class BackendService implements Serializable {
    public List<PairAtom> getPairAtoms(int count) {
        List<PairAtom> atoms = new ArrayList<>();
        for (int i = 1; i <= count; i++) {
            atoms.add(new PairAtom("text" + i, "value" + i));
        }

        return atoms;
    }
}
