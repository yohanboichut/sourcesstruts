package actions;

import com.opensymphony.xwork2.ActionSupport;
import modele.Facade;
import org.apache.struts2.interceptor.ApplicationAware;

import java.util.Map;

public abstract class Contexte extends ActionSupport implements ApplicationAware {


    private Facade facade;

    public Facade getFacade() {
        return facade;
    }

    @Override
    public void setApplication(Map<String, Object> map) {
        this.facade = (Facade) map.get("facade");
        if (this.facade == null) {
            this.facade = Facade.creer();
            map.put("facade",facade);

        }
    }
}
