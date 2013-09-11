package com.smartsms.service.impl;

//import com.smartsms.beans.Word;
import com.smartsms.repo.config.MalformedRepository;
import com.smartsms.repo.impl.AdminRepositoryImpl;
import com.smartsms.service.WordFilterExecutor;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author rajith
 */
public class WordFilterExecutorImpl implements WordFilterExecutor {

    @Autowired
    //private AdminRepositoryImpl adminRepository;

    @Override
    public void execute() {
    /*    System.out.println(" ======================================================================================");
        System.out.println(" ================================ Executing Word Filter Scheduler =====================");
        System.out.println(" ======================================================================================");
        Document doc;

        try {
            System.out.println("Removing previous words");
//            malformedRepository.removeWords();
            // need http protocol
            adminRepository.remove();
            doc = Jsoup.connect("http://onlineslangdictionary.com/word-list/b-b/").get();

            List<String> strings = new ArrayList<String>();
            // get all links
            Elements links = doc.select("a[href]");
            // get the value from href attribute
            for (Element link : links) {
                System.out.println("Adding value word : ["+link.text()+"] to word collection");
                strings.add(link.text());
            }

            Word word = new Word();
            word.setWords(strings);
            adminRepository.save(word);
            System.out.println("===================== Successfully saved ========================================");
        } catch (IOException e) {
            e.printStackTrace();
        }   */

    }
}
