package curso.microforum.jee.spring.dao;

import java.util.List;
import controller.Regions;

public interface RegionsDAO {
	
	public List<Regions> list();
	public Regions read(long id);

}
