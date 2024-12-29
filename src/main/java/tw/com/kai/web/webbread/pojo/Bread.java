package tw.com.kai.web.webbread.pojo;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Bread {
    private Integer id;
    private String breadImg;
    private String breadName;
    private String price;
    private String saleCount;
    private String breadCount;

 /*   public Bread(){}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBreadImg() {
        return breadImg;
    }

    public void setBreadImg(String breadImg) {
        this.breadImg = breadImg;
    }

    public String getBreadName() {
        return breadName;
    }

    public void setBreadName(String breadName) {
        this.breadName = breadName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSaleCount() {
        return saleCount;
    }

    public void setSaleCount(String saleCount) {
        this.saleCount = saleCount;
    }

    public String getBreadCount() {
        return breadCount;
    }

    public void setBreadCount(String breadCount) {
        this.breadCount = breadCount;
    }

    public Integer getBreadStatus() {
        return breadStatus;
    }

    public void setBreadStatus(Integer breadStatus) {
        this.breadStatus = breadStatus;
    }

    @Override
    public String toString() {
        return "Bread{" +
                "id=" + id +
                ", breadImg='" + breadImg + '\'' +
                ", breadName='" + breadName + '\'' +
                ", price='" + price + '\'' +
                ", saleCount='" + saleCount + '\'' +
                ", breadCount='" + breadCount + '\'' +
                ", breadStatus=" + breadStatus +
                '}';
    }*/
}
