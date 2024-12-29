package tw.com.kai.web.webbread.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartItem {
    private String productId;
    private String productName;
    private int quantity;
    private double price;
}
