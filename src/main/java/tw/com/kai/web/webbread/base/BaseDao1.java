package tw.com.kai.web.webbread.base;

import java.util.List;

public interface BaseDao1<T> {

    public  void save (T t);
    public List<T> search(String e);
    public void delete(int e);
    public void update(T t);
}
