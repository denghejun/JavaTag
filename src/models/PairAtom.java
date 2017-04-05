package models;

/**
 * Created by hjdeng on 4/5/17.
 */
public class PairAtom {

    private String value;

    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public PairAtom() {
    }

    public PairAtom(String text, String value) {
        this.value = value;
        this.text = text;
    }
}
