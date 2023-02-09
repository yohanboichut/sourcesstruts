package actions;


import modele.Cheval;

public class AjouterCheval extends Contexte {

    private String nomCheval;
    private int ageCheval;

    private Cheval cheval;


    public Cheval getCheval() {
        return cheval;
    }

    public String getNomCheval() {
        return nomCheval;
    }

    public void setNomCheval(String nomCheval) {
        this.nomCheval = nomCheval;
    }

    public int getAgeCheval() {
        return ageCheval;
    }

    public void setAgeCheval(int ageCheval) {
        this.ageCheval = ageCheval;
    }

    @Override
    public String execute() throws Exception {
        int idCheval = this.getFacade().ajouterCheval(this.nomCheval,this.ageCheval);
        this.cheval = this.getFacade().getChevalById(idCheval);
        return SUCCESS;
    }




    @Override
    public void validate() {
        if (this.ageCheval <= 0) {
            this.addFieldError("ageCheval", getText("erreur.ageCheval"));
        }
    }



}
