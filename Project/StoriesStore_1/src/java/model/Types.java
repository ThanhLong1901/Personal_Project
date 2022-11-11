package model;

/**
 *
 * @author elll
 */
public class Types {
    private int typesID;
    private String typesName;

    public Types() {
    }

    public Types(int typesID, String typesName) {
        this.typesID = typesID;
        this.typesName = typesName;
    }

    public int getTypesID() {
        return typesID;
    }

    public void setTypesID(int typesID) {
        this.typesID = typesID;
    }

    public String getTypesName() {
        return typesName;
    }

    public void setTypesName(String typesName) {
        this.typesName = typesName;
    }
    
    
}
