常用docker容器镜像构建，kubernetes配置文件，helm模板,用于搭建基于容器的可控云计算基础设施,包括物理机裸机，虚拟机，多厂商云主机，有效规避云计算厂商锁定
kubernetes网络方案推荐使用cilium,支持vxlan,bgp以及eBPF引擎
容器内核参数已经为高并发大吞吐量低延迟场景优化，完美运行需要kubernetes版本>=v1.11和内核版本>=4.15，低版本kubernetes和内核需要删除sysctl相关配置，这样做会失去单实例高并发能力。
宿主机系统推荐使用ubuntu或者debian并且启用apparmor enforce模式，有效对抗容器逃脱。有能力的可以部署grsecurity内核进一步增强安全,全面对抗0day漏洞。
支持在kubernetes集群里面运行Linux桌面环境(暂无3D加速)
如果需要基于虚拟化的隔离，使用kata-container

代码仓库: gitlab-ce,gogs
代码审核: gerrit
编译器: numba
持续集成/发布: jenkins,spinnaker,gitlab-ci,drone,makisu
测试: chaos-monkey,chaoskube,k8s-testsuite,test-infra,sonobuoy,PowerfulSeal,twemperf(memcached)
artifactory仓库: nexus2,nexus3,harbor,registry,quay
helm应用商店: chartmuseum,kubeapps
分布式存储: ceph,minio,openebs,glusterfs,EdgeFS
大数据集群: hadoop(hdfs+yarn),hbase,spark,flink
web服务器/容器: nginx-php,apache-php,tomcat,resin
SQL数据库: mysql,percona,mariadb,postgresql,greenplum
NoSQL数据库/缓存/存储: memcache,rethinkdb,redis,ssdb,mongodb,cassandra,ScyllaDB,LucidDB,boltdb
列式数据库: clickhouse,Vertica,MonetDB,InfiniDB
数据仓库: Infobright
GPU-Powered Database: Kinetica,MapD,BlazingDB,Brytlyt,PG-Strom,Blazegraph,SQream
NewSQL数据库: TiDB,cockroachdb,VoltDB,Clustrix, NuoDB,TokuDB, MemSQL,Couchbase,CouchDB,Riak
API查询语言: GraphQL,prisma.io
API管理和测试: API Fortress,MockApi,Postman,Tyk,Swagger,RAP2,YApi,Eolinker,DOClever,Apizza,EasyAPI,CrapApi,apidoc
时间序列数据库: influxdb,opentsdb,m3db,Heroic,TimeScaleDB,KairosDB,DolphinDB,Druid,Graphite
消息队列/流存储: rabbitmq,memcacheq,rocketmq,rocketmq-console-ng,kafka,kafka-manager
配置管理: zookeeper,zkui,qconf,etcd,apollo,disconf,spring-cloud-config
定时/任务管理: xxl-job,elasticjob,escalator
集群管理: nomad
项目管理: jira,zentao
企业ERP: odoo
开发环境SDK: golang,golang-gvm,oracle-jdk,oracle-jdk-maven
配置管理与服务自动发现: consul,confd,containerpilot,registrator
反向代理/ingress: fabio,traefik,envoy
微服务管理与持续发布: fabric8,jenkins-x,draft,knative,service-fabric
微服务框架/组件: istio,naftis,dubbo,dubbokeeper,kong,kong-dashboard,consul,openlambda,linkerd2/Conduit,registrator
FAAS: fission,fnproject,funktion,kubeless,nuclio,open-lambda,openfaas,openwhisk,vmware-dispatch,Claudia
日志集群: elastic-stack(elasticsearch+cerebro+kibana)
日志采集: logstash,filebeat,logtail,log-pilot,logspout,auditbeat
监控/APM: appdash,apm-server,Argus,bosun,cadvisor,cortex,heapster,kube-state-metrics,metrics-server,searchlight,prometheus,thanos,pinpoint,jaeger,zipkin,skywalking,kubewatch,searchlight,Molten,sensu,opencensus,opentelemetry,telegraf,zabbix
动态性能追踪: bcc-tools,systemtap,sysdig
kubernetes集群安装/升级: kubespray
kubernetes可视化管理工具: kubernetes-dashboard,weavescope,kubebox,kubedash,kube-ops-view,cabin,wayne(360),KubeSphere
kubernetes灾难恢复: ark
kubernetes扩容:virtual-kubelet,cluster-capacity,hpa-operator
开发工具: Telepresence,Keel,Apollo,Deis Workflow,Kel,
安全工具: anchore,clair,cert-manager,docker-bench-security,magic-namespace,notary,OpenSCAP,trireme,NeuVector,Deepfence,StackRox,Tenable,Cavirin,Kube-Bench,Sysdig Falco,Sysdig Secure,Kubesec.io;付费 Aquasec,flawcheck
编排转换：kompose
备份/恢复/迁移: mydumper,zkcopy,mongodb_consistent_backup
PaaS:flynn,tsuru,service-catalog
负载均衡: gimbal
商业智能: MS Power BI,Superset,Metabase,CBoard
PXE装机: fai-project
集群pod调试: kubectl-debug


云原生（CloudNative）应用
分布式存储: rook-ceph,rook-minio,openebs
虚拟化: kubevirt
监控: prometheus-operator,jaeger-operator
配置管理: etcd-operator
operator-sdk

kubedb(elasticsearch,memcached,mongodb,mysql,postgres,redis)

kafka-operator: Banzai Cloud(荐),Krallistic,Strimzi,Confluent

桌面服务(DaaS)
ubuntu-xfce-vnc
ubuntu-icewm-vnc
centos-xfce-vnc
centos-icewm-vnc
x11docker
teamviewer
anydesk

数据库服务(DBaaS)
mysql
redis

device plugin framework
Graphics Processing Unit (GPU) plugin
Field Programmable Gate Array (FPGA) plugin
Intel® QuickAssist Technology (QAT) plugin

开发原则和模式
云原生规范 Cloud Native Definition
https://github.com/cncf/toc/blob/master/DEFINITION.md
微服务十二要素 The Twelve Factors
https://12factor.net/
