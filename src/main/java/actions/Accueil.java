package actions;

import modele.Cheval;

import java.util.ArrayList;
import java.util.Collection;

public class Accueil extends Contexte {

    public Collection<Cheval> getChevaux() {
        //return new ArrayList<>();
        return this.getFacade().getChevaux();
    }

}
