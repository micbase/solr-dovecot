FROM solr:7.7

MAINTAINER Michael Chang <github@micbase.com>

RUN SOLR_HOME=/opt/solr/server/solr/ precreate-core dovecot
RUN rm -f /opt/solr/server/solr/dovecot/conf/managed-schema && \
    curl https://raw.githubusercontent.com/dovecot/core/master/doc/solr-config-7.7.0.xml -o /opt/solr/server/solr/dovecot/conf/solrconfig.xml && \
    curl https://raw.githubusercontent.com/dovecot/core/master/doc/solr-schema-7.7.0.xml -o /opt/solr/server/solr/dovecot/conf/schema.xml
