package tw.com.kai.web.webbread.dao.Impl;

import org.apache.ibatis.session.SqlSession;
import tw.com.kai.web.webbread.dao.ProductDao;
import tw.com.kai.web.webbread.mappers.ProductMapper;
import tw.com.kai.web.webbread.pojo.Bread;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

import java.util.List;

public class ProductDaoImpI implements ProductDao {

    @Override
    public void save(Bread bread) {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            // 調用對應的 Mapper 方法
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.save(bread);
            session.commit();
        } catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }

    @Override
    public List<Bread> search(String breadName) {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            return mapper.search(breadName);
        }catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }

    @Override
    public void delete(int id) {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.delete(id);
            session.commit();
        }catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }

    @Override
    public void update(Bread bread) {
        try (SqlSession session = MyBatisUtil.getSqlSession()) {
            ProductMapper mapper = session.getMapper(ProductMapper.class);
            mapper.update(bread);
            session.commit();
        }catch (Exception e) {
            throw new RuntimeException("Error querying breads", e);
        }
    }
}
