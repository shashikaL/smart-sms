package com.smartsms.reporsitory.impl;


import com.smartsms.beans.AlertApplication;
import com.smartsms.reporsitory.PluginRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class AlertAppRepositoryImpl extends JdbcDaoSupport implements PluginRepository {

    private final static Logger logger = LoggerFactory.getLogger(AlertAppRepositoryImpl.class);

    @Override
    public void executePlugin(AlertApplication alertApplication) {
        logger.info("Going to save alert app id [{}]",alertApplication.getAppId());
        final String sql = "INSERT INTO `ALERT_APP`(`ID`,`NAME`,`DESCRIPTION`,`START_DATE`,`END_DATE`) " +
                "VALUES(:id,:name,:description,:startDate,:endDate)";
        NamedParameterJdbcTemplate namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(
                getJdbcTemplate().getDataSource());

        MapSqlParameterSource parameters = new MapSqlParameterSource();
        parameters.addValue("id",alertApplication.getAppId().toString());
        parameters.addValue("name",alertApplication.getAppName());
        parameters.addValue("description",alertApplication.getAppDescription());
        parameters.addValue("startDate",alertApplication.getStartDate());
        parameters.addValue("endDate",alertApplication.getEndDate());

        namedParameterJdbcTemplate.update(sql,parameters);
        logger.info("Successfully saved alert app id [{}]",alertApplication.getAppId());
    }
}
