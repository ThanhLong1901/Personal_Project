package model;

public class Order {
    private int orderID;
    private String orderDate;
    private double totalMoney;

    public Order() {
    }

    public Order(int orderID, String orderDate, double totalMoney) {
        this.orderID = orderID;
        this.orderDate = orderDate;
        this.totalMoney = totalMoney;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

   
}
