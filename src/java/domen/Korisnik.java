package domen;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ANA
 */
public class Korisnik {
    
    String ime;
    String prezime;
    String korisnickoIme;
    String korisnickaSifra;

    public Korisnik() {
    }

    public Korisnik(String ime, String prezime, String username, String password) {
        this.ime = ime;
        this.prezime = prezime;
        this.korisnickoIme =username;
        this.korisnickaSifra = password;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

  

    public void setKorisnickoIme(String username) {
        this.korisnickoIme = username;
    }

    public String getKorisniskaSifra() {
        return korisnickaSifra;
    }

    public void setKorisniskaSifra(String password) {
        this.korisnickaSifra = password;
    }

    public Object getKorisnickoIme() {
        return korisnickoIme;
    }
    
    
            
}
