package com.smartsms.repo.impl;

import org.junit.Test;
import rita.wordnet.RiWordnet;

public class RitaWordNetBenchMarkTest {

    @Test
    public void testWord() throws Exception {
        RiWordnet riWordnet = new RiWordnet();
        System.out.println(riWordnet.exists("hello"));


        String[] hellos = riWordnet.getPos("hello");
        for (String s: hellos){
            System.out.println(s);
        }


    }
}
