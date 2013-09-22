package com.smartsms.util;


import com.smartsms.beans.Keyword;
import com.smartsms.repo.config.ApplicationTypeRepository;
import org.apache.cxf.common.util.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * User: Sony
 * Date: 22/09/13
 * Time: 1:40 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class KeywordGenerator {

    @Autowired
    private ApplicationTypeRepository applicationTypeRepository;

    public int randomIntGenerator() {
        int RandomNumber = new Random().nextInt(9999 - 1000) + 1000;
        return RandomNumber;

    }

    public String randomCharactorGenerator() {

        final String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        Random r = new Random();
        String re = "";
        for (int i = 0; i < 3; i++) {

            re = re + alphabet.charAt(r.nextInt(alphabet.length()));
        }
        return re;
    }


    public List<Keyword> GetUniqueKeywords() {
        List<Keyword> keywords = new ArrayList<Keyword>();
        for (int i = 0; i < 10; i++) {
            int shortcode = randomIntGenerator();
            String name = randomCharactorGenerator();

            List<Keyword> keywords1 = applicationTypeRepository.FindAllKeywords();

            if(CollectionUtils.isEmpty(keywords1)){
                Keyword K = new Keyword();
                K.setName(name);
                K.setShortCode(String.valueOf(shortcode));
                keywords.add(K);
                continue;
            }

            for (Keyword a : keywords1) {
                if (String.valueOf(shortcode).equals(a.getShortCode()) || name.equals(a.getName())) {
                    i--;
                } else {
                    Keyword K = new Keyword();
                    K.setName(name);
                    K.setShortCode(String.valueOf(shortcode));
                    keywords.add(K);
                }
            }
        }
        return keywords;
    }
}
