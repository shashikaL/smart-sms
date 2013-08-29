package com.smartsms.repo.config;


import com.smartsms.beans.Malformed;

import java.util.List;

public interface MalformedRepository {

    public void saveMalformed(Malformed mal);

    public List<Malformed> findAllMalformed();

    public void save(List<String> words);

    public void removeWords();
}
