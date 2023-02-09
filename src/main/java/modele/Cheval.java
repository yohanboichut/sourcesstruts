package modele;

public class Cheval {


    private int idCheval;
    private String nom;
    private int age;


    private Cheval(int idCheval, String nom, int age) {
        this.idCheval = idCheval;
        this.nom = nom;
        this.age = age;
    }

    private static int IDS=0;

    public static Cheval creer(String nom, int age) {
        return new Cheval(IDS++, nom,age);
    }

    public int getIdCheval() {
        return idCheval;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
