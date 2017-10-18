/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package review;

import entity.Element;

/**
 *
 * @author Rex Brooks
 */

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


public class DataCategoryReviewElement {

    Element element;
    short quantity;

    public DataCategoryReviewElement(Element element) {
        this.element = element;
        quantity = 1;
    }

    public Element getElement() {
        return element;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

    public void incrementQuantity() {
        quantity++;
    }

    public void decrementQuantity() {
        quantity--;
    }

    public double getTotal() {
        double amount = 0;
        amount = (this.getQuantity());
        return amount;
    }

}