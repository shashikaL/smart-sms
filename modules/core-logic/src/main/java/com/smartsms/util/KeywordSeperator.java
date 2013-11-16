package com.smartsms.util;

import com.smartsms.beans.Keyword;


public class KeywordSeperator {

    public static Keyword createKeyword(String keywordStr){
        String[] split = keywordStr.split("-");
        Keyword keyword = new Keyword();
        keyword.setName(split[0]);
        keyword.setShortCode(split[1]);
        return keyword;
    }
}
