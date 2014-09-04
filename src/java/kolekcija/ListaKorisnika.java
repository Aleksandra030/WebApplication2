/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package kolekcija;

import domen.Korisnik;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ANA
 */
public class ListaKorisnika {
     private static List<Korisnik> listaKorisnika;

    static {

        listaKorisnika = new ArrayList<>();
        Korisnik k = new Korisnik("Pera", "Peric", "pera", "1234");
        listaKorisnika.add(k);
        Korisnik k1 = new Korisnik("Mika", "Mikic", "mika", "4321");
        listaKorisnika.add(k1);
    }

    public static void dodajKorisnika(Korisnik k) {
        listaKorisnika.add(k);
    }

    public static List<Korisnik> vratiSveKorisnike() {
        return listaKorisnika;
    }

    public static void obrisiKorisnika(String korisnickoIme) {
        for (Korisnik korisnik : listaKorisnika) {
            if (korisnickoIme.equals(korisnik.getKorisnickoIme())) {
                listaKorisnika.remove(korisnik);
                break;
            }
        }
}
     public static Korisnik prijaviSe(String korisnickoIme, String korisnickaSifra) throws Exception {

         
        for (Korisnik korisnik : listaKorisnika) {
            
            if (korisnickoIme.equals(korisnik.getKorisnickoIme())) {
                return korisnik;
            }
        }
        throw new Exception("Korisnik ne postoji");
    }}
