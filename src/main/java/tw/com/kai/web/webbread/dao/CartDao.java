package tw.com.kai.web.webbread.dao;

import tw.com.kai.web.webbread.pojo.CartItem;

import java.util.List;

public interface CartDao {
    void addItem(CartItem item);
    public List<CartItem> getItems();
    void clear();
}
