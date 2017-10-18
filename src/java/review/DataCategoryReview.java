/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package review;

import entity.Category;
import entity.Element;
import java.util.*;
import javax.persistence.metamodel.SingularAttribute;
import static jdk.nashorn.internal.runtime.Debug.id;

/**
 *
 * @author tgiunipero
 */
public class DataCategoryReview {

    List<DataCategoryReviewElement> items;
    int numberOfItems;
    double total;

    public DataCategoryReview() {
        items = new ArrayList<DataCategoryReviewElement>();
        numberOfItems = 0;
        total = 0;
    }

    /**
     * Adds a <code>ShoppingCartItem</code> to the <code>ShoppingCart</code>'s
     * <code>items</code> list. If item of the specified <code>product</code>
     * already exists in shopping cart list, the quantity of that item is
     * incremented.
     *
     * @param product the <code>Product</code> that defines the type of shopping cart item
     * @see ShoppingCartItem
     */
    public synchronized void addItem(Element element) {

        boolean newItem = true;

        for (DataCategoryReviewElement scItem : items) {

            if (scItem.getElement().getId() == element.getId()) {
                newItem = false;
                scItem.incrementQuantity();
            } else {
            }
        }

        if (newItem) {
            DataCategoryReviewElement scItem = new DataCategoryReviewElement(element);
            items.add(scItem);
        }
    }

    /**
     * Updates the <code>ShoppingCartItem</code> of the specified
     * <code>product</code> to the specified quantity. If '<code>0</code>'
     * is the given quantity, the <code>ShoppingCartItem</code> is removed
     * from the <code>ShoppingCart</code>'s <code>items</code> list.
     *
     * @param product the <code>Product</code> that defines the type of shopping cart item
     * @param quantity the number which the <code>ShoppingCartItem</code> is updated to
     * @see ShoppingCartItem
     */
    public synchronized void update(Element element, String quantity) {

        short qty = -1;

        // cast quantity as short
        qty = Short.parseShort(quantity);

        if (qty >= 0) {

            DataCategoryReviewElement item = null;

            for (DataCategoryReviewElement scItem : items) {

                if (scItem.getElement().getId() == element.getId()) {

                    if (qty != 0) {
                        // set item quantity to new value
                        scItem.setQuantity(qty);
                    } else {
                        // if quantity equals 0, save item and break
                        item = scItem;
                        break;
                    }
                }
            }
        }
    }

    /**
     * Returns the list of <code>ShoppingCartItems</code>.
     *
     * @return the <code>items</code> list
     * @see ShoppingCartItem
     */
    public synchronized List<DataCategoryReviewElement> getElements() {

        return items;
    }

    /**
     * Returns the sum of quantities for all items maintained in shopping cart
     * <code>items</code> list.
     *
     * @return the number of items in shopping cart
     * @see ShoppingCartItem
     */
    public synchronized int getNumberOfItems() {

        numberOfItems = 0;

        for (DataCategoryReviewElement scItem : items) {

            numberOfItems += scItem.getQuantity();
        }

        return numberOfItems;
    }

    /**
     * Returns the sum of the product price multiplied by the quantity for all
     * items in shopping cart list. This is the total cost excluding the surcharge.
     *
     * @return the cost of all items times their quantities
     * @see ShoppingCartItem
     */
    public synchronized double getSubtotal() {

        double amount = 0;

        for (DataCategoryReviewElement scItem : items) {

            Element element = (Element) scItem.getElement();
            amount += (scItem.getQuantity());
        }

        return amount;
    }

}