/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    public int getQuantityByID(String bookID){
        return getItemByID(bookID).getQuantity();
    }

    private Item getItemByID(String bookID) {
        for (Item i : items) {
            if (i.getProduct().getBookID() == null ? bookID == null : i.getProduct().getBookID().equals(bookID)) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemByID(t.getProduct().getBookID()) != null) {
            Item m = getItemByID(t.getProduct().getBookID());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(String bookID) {
        if (getItemByID(bookID) != null) {
            items.remove(getItemByID(bookID));
        }
    }

    public double getTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }

}
