package tw.com.kai.web.webbread.dao.Impl;

import tw.com.kai.web.webbread.dao.CartDao;
import tw.com.kai.web.webbread.pojo.CartItem;

import java.util.ArrayList;
import java.util.List;

public class CartDaoImpI implements CartDao {
    private List<CartItem> items = new ArrayList<CartItem>();

    @Override
    public void addItem(CartItem item) {
        for (CartItem existingItem : items) {
            if(existingItem.getProductId().equals(item.getProductId())){
                existingItem.setQuantity(existingItem.getQuantity() + item.getQuantity());
                return;
            }
        }
        items.add(item);
    }

    @Override
    public List<CartItem> getItems() {
        return items;
    }

    public void clear(){
        items.clear();
    }
}
