package tw.com.kai.web.webbread.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Bread1 {
    private Integer id;
    private String breadImg;
    private String breadName;
    private String price;

  /*  public Bread1() {

    }

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

    @Override
    public String toString() {
        return "Bread1{" +
                "id=" + id +
                ", breadImg='" + breadImg + '\'' +
                ", breadName='" + breadName + '\'' +
                ", price='" + price + '\'' +
                '}';
    }*/
}
