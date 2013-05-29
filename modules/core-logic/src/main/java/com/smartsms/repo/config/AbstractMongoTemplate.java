package com.smartsms.repo.config;


import com.mongodb.Mongo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.authentication.UserCredentials;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.core.SimpleMongoDbFactory;
import org.springframework.data.mongodb.core.convert.CustomConversions;
import org.springframework.data.mongodb.core.convert.MappingMongoConverter;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractMongoTemplate extends AbstractMongoConfiguration {

    @Autowired
    private MongoDBConfig mongoDBConfig;

    @Override
    protected abstract String getDatabaseName();

    @Override
    @Bean
    public Mongo mongo() throws Exception {
        return new Mongo(mongoDBConfig.getMongoHost(), mongoDBConfig.getMongoPort());
    }

    @Bean
    public SimpleMongoDbFactory mongoDbFactory() throws Exception {
        final UserCredentials userCredentials = new UserCredentials("", "");
        return new SimpleMongoDbFactory(mongo(), getDatabaseName(),
                userCredentials);
    }

    @Override
    @Bean
    public MappingMongoConverter mappingMongoConverter() throws Exception {
        MappingMongoConverter converter = new MappingMongoConverter(
                mongoDbFactory(), mongoMappingContext());
        converter.setCustomConversions(customConversions());
        converter.afterPropertiesSet();
        return converter;
    }

    @Override
    @Bean
    public CustomConversions customConversions() {
        List<Converter<?, ?>> converters = new ArrayList<Converter<?, ?>>();
//        converters.add(new DateToJodaDateTimeConverter());
//        converters.add(new JodaDateTimeToDateConverter());
//        converters.add(new LongToDateTimeConverter());
        return new CustomConversions(converters);
    }

}
