package actions;

import modele.Cheval;

public class RecupereUnCheval extends Contexte {


    private int id;


    private Cheval cheval;

    public Cheval getCheval() {
        return cheval;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Override
    public String execute() throws Exception {
        this.cheval = this.getFacade().getChevalById(id);
        return SUCCESS;
    }

}
