.class public Ljavax/jmdns/impl/JmDNSImpl;
.super Ljavax/jmdns/JmDNS;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;
.implements Ljavax/jmdns/impl/DNSTaskStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$7;,
        Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;,
        Ljavax/jmdns/impl/JmDNSImpl$Shutdown;,
        Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;,
        Ljavax/jmdns/impl/JmDNSImpl$Operation;
    }
.end annotation


# static fields
.field private static final _random:Ljava/util/Random;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _cache:Ljavax/jmdns/impl/DNSCache;

.field private volatile _delegate:Ljavax/jmdns/JmDNS$Delegate;

.field private final _executor:Ljava/util/concurrent/ExecutorService;

.field private volatile _group:Ljava/net/InetAddress;

.field private _incomingListener:Ljava/lang/Thread;

.field private final _ioLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _lastThrottleIncrement:J

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSListener;",
            ">;"
        }
    .end annotation
.end field

.field private _localHost:Ljavax/jmdns/impl/HostInfo;

.field private final _name:Ljava/lang/String;

.field private _plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

.field private final _recoverLock:Ljava/lang/Object;

.field private final _serviceCollectors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final _serviceListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _serviceTypes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final _services:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected _shutdown:Ljava/lang/Thread;

.field private volatile _socket:Ljava/net/MulticastSocket;

.field private _throttle:I

.field private final _typeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    .line 334
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 393
    invoke-direct {p0}, Ljavax/jmdns/JmDNS;-><init>()V

    .line 317
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 339
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1684
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    .line 394
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "JmDNS instance created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 397
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 402
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 404
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 405
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 407
    invoke-static {p1, p0, p2}, Ljavax/jmdns/impl/HostInfo;->newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 408
    if-eqz p2, :cond_1

    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V

    .line 423
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startReaper()V

    .line 424
    return-void

    .line 408
    .restart local p2    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;
    .param p3, "synch"    # Z

    .prologue
    .line 923
    new-instance v10, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, v0, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 924
    .local v10, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "loType":Ljava/lang/String;
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 926
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-nez v5, :cond_1

    .line 927
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v11, v6, v12}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    .line 928
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v12, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v6, v12}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    .line 930
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/jmdns/ServiceListener;

    const/4 v12, 0x1

    invoke-direct {p0, v6, v11, v12}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 933
    :cond_0
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    check-cast v5, Ljava/util/List;

    .line 935
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :cond_1
    if-eqz v5, :cond_3

    .line 936
    monitor-enter v5

    .line 937
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 938
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v9, "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v2

    .line 945
    .local v2, "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .local v3, "entry":Ljavax/jmdns/impl/DNSEntry;
    move-object v7, v3

    .line 946
    check-cast v7, Ljavax/jmdns/impl/DNSRecord;

    .line 947
    .local v7, "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    sget-object v12, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v11, v12, :cond_4

    .line 948
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 951
    new-instance v11, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    invoke-direct {v11, p0, v12, v13, v14}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 940
    .end local v2    # "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v3    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "record":Ljavax/jmdns/impl/DNSRecord;
    .end local v9    # "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 956
    .restart local v2    # "dnsEntryLits":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "serviceEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/ServiceEvent;

    .line 957
    .local v8, "serviceEvent":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v10, v8}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_1

    .line 960
    .end local v8    # "serviceEvent":Ljavax/jmdns/ServiceEvent;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private closeMulticastSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket()"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 472
    :cond_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_3

    .line 476
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 487
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :try_start_2
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 495
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "closeMulticastSocket() Close socket exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_3
    iput-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 508
    :cond_3
    return-void

    .line 502
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 497
    :catch_1
    move-exception v1

    goto :goto_2

    .line 477
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private disposeServiceCollectors()V
    .locals 5

    .prologue
    .line 1984
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1985
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v4, "disposeServiceCollectors()"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1987
    :cond_0
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1988
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1989
    .local v0, "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-eqz v0, :cond_1

    .line 1990
    invoke-virtual {p0, v2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 1991
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1994
    .end local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 2176
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 367
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 368
    .local v1, "pomProperties":Ljava/util/Properties;
    const-class v3, Ljavax/jmdns/impl/JmDNSImpl;

    const-string v4, "/META-INF/maven/javax.jmdns/jmdns/pom.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 369
    const-string v3, "version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 373
    .end local v1    # "pomProperties":Ljava/util/Properties;
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JmDNS version \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running on java version \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (build "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.runtime.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.vendor"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operating environment \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.arch"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "For more information on JmDNS please visit https://sourceforge.net/projects/jmdns/"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RUNNING.IN.IDE.FULL"

    goto/16 :goto_0
.end method

.method private makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z
    .locals 12
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .prologue
    .line 1141
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1142
    .local v3, "originalQualifiedName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1146
    .local v4, "now":J
    :cond_0
    const/4 v0, 0x0

    .line 1149
    .local v0, "collision":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSEntry;

    .line 1150
    .local v1, "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v4, v5}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v1

    .line 1151
    check-cast v6, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 1152
    .local v6, "s":Ljavax/jmdns/impl/DNSRecord$Service;
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v8

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v9}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1153
    :cond_2
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1154
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " s.server="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v10}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " equals:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v11}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1156
    :cond_3
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1157
    const/4 v0, 0x1

    .line 1164
    .end local v1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local v6    # "s":Ljavax/jmdns/impl/DNSRecord$Service;
    :cond_4
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/ServiceInfo;

    .line 1165
    .local v7, "selfService":Ljavax/jmdns/ServiceInfo;
    if-eqz v7, :cond_5

    if-eq v7, p1, :cond_5

    .line 1166
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x1

    .line 1170
    :cond_5
    if-nez v0, :cond_0

    .line 1172
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V
    .locals 4
    .param p1, "hostInfo"    # Ljavax/jmdns/impl/HostInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    .line 444
    const-string v1, "FF02::FB"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 449
    :cond_0
    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    .line 450
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 452
    :cond_1
    new-instance v1, Ljava/net/MulticastSocket;

    sget v2, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 453
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 455
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_2
    :goto_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 463
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 464
    return-void

    .line 446
    :cond_3
    const-string v1, "224.0.0.251"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/net/SocketException;
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMulticastSocket() Set network interface exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private start(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/ServiceInfo;>;"
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 428
    new-instance v3, Ljavax/jmdns/impl/SocketListener;

    invoke-direct {v3, p0}, Ljavax/jmdns/impl/SocketListener;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    .line 429
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 431
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 432
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .line 434
    .local v2, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    new-instance v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-direct {v3, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "start() Registration exception "

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 439
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v2    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_1
    return-void
.end method

.method static toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 2147
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2148
    .local v1, "loType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2149
    .local v0, "loQualifiedName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2150
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2152
    .end local p1    # "qualifiedName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V
    .locals 6
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "timeout"    # J

    .prologue
    .line 816
    monitor-enter p1

    .line 817
    const-wide/16 v4, 0xc8

    :try_start_0
    div-long v2, p2, v4

    .line 818
    .local v2, "loops":J
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 819
    const-wide/16 v2, 0x1

    .line 821
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 822
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    return-void

    .line 826
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "i":I
    .end local v2    # "loops":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 827
    .restart local v0    # "i":I
    .restart local v2    # "loops":J
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method __recover()V
    .locals 8

    .prologue
    .line 1721
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1722
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recover() Cleanning up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1725
    :cond_0
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v5, "RECOVERING"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeTimer()V

    .line 1730
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1733
    .local v3, "oldServiceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1734
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1736
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1739
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->purgeStateTimer()V

    .line 1743
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1746
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 1747
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1748
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recover() All is clean"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1751
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1755
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .line 1756
    .local v2, "info":Ljavax/jmdns/ServiceInfo;
    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v2    # "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    goto :goto_0

    .line 1758
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->recoverState()Z

    .line 1761
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 1762
    invoke-direct {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :goto_1
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "recover() We are back!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1775
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    return-void

    .line 1763
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "recover() Start services exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1769
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "recover() Could not recover we are Down!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDelegate()Ljavax/jmdns/JmDNS$Delegate;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1771
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDelegate()Ljavax/jmdns/JmDNS$Delegate;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljavax/jmdns/JmDNS$Delegate;->cannotRecoverFromIOError(Ljavax/jmdns/JmDNS;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p5, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0x8400

    const/4 v3, 0x0

    .line 1505
    move-object v1, p4

    .line 1506
    .local v1, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    if-nez v1, :cond_0

    .line 1507
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v1    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v2

    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 1510
    .restart local v1    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_0
    return-object v1

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 1513
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 1514
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 1516
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v1    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v2

    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 1517
    .restart local v1    # "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 6
    .param p1, "listener"    # Ljavax/jmdns/impl/DNSListener;
    .param p2, "question"    # Ljavax/jmdns/impl/DNSQuestion;

    .prologue
    .line 1200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1203
    .local v2, "now":J
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    if-eqz p2, :cond_1

    .line 1208
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 1209
    .local v0, "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/DNSQuestion;->answeredBy(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1210
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-interface {p1, v4, v2, v3, v0}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_0

    .line 1214
    .end local v0    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 920
    return-void
.end method

.method public addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 6
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    new-instance v1, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;-><init>(Ljavax/jmdns/ServiceTypeListener;Z)V

    .line 895
    .local v1, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 898
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 899
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    invoke-virtual {v1, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 902
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startTypeResolver()V

    .line 903
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 516
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 564
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 565
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->cancelState()Z

    move-result v0

    return v0
.end method

.method public cancelStateTimer()V
    .locals 2

    .prologue
    .line 1583
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelStateTimer()V

    .line 1584
    return-void
.end method

.method public cancelTimer()V
    .locals 2

    .prologue
    .line 1574
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->cancelTimer()V

    .line 1575
    return-void
.end method

.method public cleanCache()V
    .locals 12

    .prologue
    .line 1778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1779
    .local v6, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 1781
    .local v2, "entry":Ljavax/jmdns/impl/DNSEntry;
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    move-object v5, v0

    .line 1782
    .local v5, "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v5, v6, v7}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1783
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {p0, v6, v7, v5, v8}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    .line 1784
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1789
    .end local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :catch_0
    move-exception v3

    .line 1790
    .local v3, "exception":Ljava/lang/Exception;
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Error while reaping records: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1791
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 1785
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_1
    :try_start_1
    invoke-virtual {v5, v6, v7}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1787
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/JmDNSImpl;->renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1794
    .end local v2    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1801
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    :goto_0
    return-void

    .line 1805
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling JmDNS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1810
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1814
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Canceling the timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelTimer()V

    .line 1818
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1819
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1821
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for JmDNS cancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1824
    :cond_2
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1827
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Canceling the state timer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelStateTimer()V

    .line 1831
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1834
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1837
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 1838
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 1841
    :cond_3
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1842
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "JmDNS closed."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1845
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    goto/16 :goto_0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->closeState()Z

    move-result v0

    return v0
.end method

.method public getCache()Ljavax/jmdns/impl/DNSCache;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    return-object v0
.end method

.method public getDelegate()Ljavax/jmdns/JmDNS$Delegate;
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 0

    .prologue
    .line 556
    return-object p0
.end method

.method public getGroup()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLastThrottleIncrement()J
    .locals 2

    .prologue
    .line 2164
    iget-wide v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    return-wide v0
.end method

.method public getLocalHost()Ljavax/jmdns/impl/HostInfo;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlannedAnswer()Ljavax/jmdns/impl/DNSIncoming;
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 711
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 719
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 727
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 735
    const-string v1, ""

    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 736
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 737
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 24
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .prologue
    .line 758
    new-instance v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    check-cast v10, [B

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 759
    .local v2, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v9

    new-instance v3, Ljavax/jmdns/impl/DNSRecord$Pointer;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v19

    .line 760
    .local v19, "pointerEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v19

    instance-of v5, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v5, :cond_7

    .line 761
    check-cast v19, Ljavax/jmdns/impl/DNSRecord;

    .end local v19    # "pointerEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 762
    .local v3, "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v3, :cond_7

    .line 765
    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v4

    .line 766
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 767
    .local v22, "srvBytes":[B
    const-string v20, ""

    .line 768
    .local v20, "server":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v21

    .line 769
    .local v21, "serviceEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v21

    instance-of v5, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v5, :cond_0

    .line 770
    check-cast v21, Ljavax/jmdns/impl/DNSRecord;

    .end local v21    # "serviceEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v15

    .line 771
    .local v15, "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v15, :cond_0

    .line 772
    new-instance v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v3    # "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v5

    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v6

    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v7

    const/4 v9, 0x0

    check-cast v9, [B

    move/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 773
    .restart local v3    # "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v22

    .line 774
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v20

    .line 777
    .end local v15    # "cachedServiceEntryInfo":Ljavax/jmdns/ServiceInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v12

    .line 778
    .local v12, "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v5, v12, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v5, :cond_2

    .line 779
    check-cast v12, Ljavax/jmdns/impl/DNSRecord;

    .end local v12    # "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    .line 780
    .local v14, "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v14, :cond_2

    .line 781
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v13

    .local v13, "arr$":[Ljava/net/Inet4Address;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v11, v13, v17

    .line 782
    .local v11, "address":Ljava/net/Inet4Address;
    invoke-virtual {v3, v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    .line 781
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 784
    .end local v11    # "address":Ljava/net/Inet4Address;
    :cond_1
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 787
    .end local v13    # "arr$":[Ljava/net/Inet4Address;
    .end local v14    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v6, v7}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v12

    .line 788
    .restart local v12    # "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    instance-of v5, v12, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v5, :cond_4

    .line 789
    check-cast v12, Ljavax/jmdns/impl/DNSRecord;

    .end local v12    # "addressEntry":Ljavax/jmdns/impl/DNSEntry;
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    .line 790
    .restart local v14    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v14, :cond_4

    .line 791
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v13

    .local v13, "arr$":[Ljava/net/Inet6Address;
    array-length v0, v13

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v11, v13, v17

    .line 792
    .local v11, "address":Ljava/net/Inet6Address;
    invoke-virtual {v3, v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 791
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 794
    .end local v11    # "address":Ljava/net/Inet6Address;
    :cond_3
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 797
    .end local v13    # "arr$":[Ljava/net/Inet6Address;
    .end local v14    # "cachedAddressInfo":Ljavax/jmdns/ServiceInfo;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v23

    .line 798
    .local v23, "textEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v23

    instance-of v5, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v5, :cond_5

    .line 799
    check-cast v23, Ljavax/jmdns/impl/DNSRecord;

    .end local v23    # "textEntry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v16

    .line 800
    .local v16, "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    if-eqz v16, :cond_5

    .line 801
    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 804
    .end local v16    # "cachedTextInfo":Ljavax/jmdns/ServiceInfo;
    :cond_5
    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_6

    .line 805
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 807
    :cond_6
    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 808
    move-object v2, v3

    .line 812
    .end local v3    # "cachedInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .end local v20    # "server":Ljava/lang/String;
    .end local v22    # "srvBytes":[B
    :cond_7
    return-object v2
.end method

.method public getServiceTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2200
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2156
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public getThrottle()I
    .locals 1

    .prologue
    .line 2172
    iget v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 12
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1446
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".handle query: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1449
    :cond_0
    const/4 v1, 0x0

    .line 1450
    .local v1, "conflictDetected":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x78

    add-long v2, v8, v10

    .line 1451
    .local v2, "expirationTime":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 1452
    .local v0, "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v0, p0, v2, v3}, Ljavax/jmdns/impl/DNSRecord;->handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z

    move-result v8

    or-int/2addr v1, v8

    .line 1453
    goto :goto_0

    .line 1455
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    .line 1458
    :try_start_0
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-eqz v8, :cond_2

    .line 1459
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v8, p1}, Ljavax/jmdns/impl/DNSIncoming;->append(Ljavax/jmdns/impl/DNSIncoming;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 1472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1473
    .local v6, "now":J
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 1474
    .restart local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v0, v6, v7}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    .line 1461
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    .end local v6    # "now":J
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v5

    .line 1462
    .local v5, "plannedAnswer":Ljavax/jmdns/impl/DNSIncoming;
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1463
    iput-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 1465
    :cond_3
    invoke-virtual {p0, v5, p3}, Ljavax/jmdns/impl/JmDNSImpl;->startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1469
    .end local v5    # "plannedAnswer":Ljavax/jmdns/impl/DNSIncoming;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw v8

    .line 1477
    .restart local v6    # "now":J
    :cond_4
    if-eqz v1, :cond_5

    .line 1478
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1480
    :cond_5
    return-void
.end method

.method handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 12
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord;
    .param p2, "now"    # J

    .prologue
    .line 1328
    move-object v5, p1

    .line 1330
    .local v5, "newRecord":Ljavax/jmdns/impl/DNSRecord;
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1331
    .local v0, "cacheOperation":Ljavax/jmdns/impl/JmDNSImpl$Operation;
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v3

    .line 1332
    .local v3, "expired":Z
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1333
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " handle response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1337
    :cond_0
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->isServicesDiscoveryMetaQuery()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->isDomainDiscoveryQuery()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1338
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->isUnique()Z

    move-result v7

    .line 1339
    .local v7, "unique":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    .line 1340
    .local v1, "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1341
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " handle response cached record: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1343
    :cond_1
    if-eqz v7, :cond_3

    .line 1344
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 1345
    .local v2, "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eq v2, v1, :cond_2

    .line 1346
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .end local v2    # "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    goto :goto_0

    .line 1350
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v1, :cond_b

    .line 1351
    if-eqz v3, :cond_7

    .line 1353
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v8

    if-nez v8, :cond_6

    .line 1354
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1355
    invoke-virtual {v1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->setWillExpireSoon(J)V

    .line 1386
    .end local v1    # "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    .end local v7    # "unique":Z
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v8

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v8, v9, :cond_d

    .line 1388
    const/4 v6, 0x0

    .line 1389
    .local v6, "typeAdded":Z
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->isServicesDiscoveryMetaQuery()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1391
    if-nez v3, :cond_5

    .line 1392
    check-cast v5, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local v5    # "newRecord":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v6

    .line 1407
    .end local v6    # "typeAdded":Z
    :cond_5
    :goto_2
    return-void

    .line 1358
    .restart local v1    # "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    .restart local v5    # "newRecord":Ljavax/jmdns/impl/DNSRecord;
    .restart local v7    # "unique":Z
    :cond_6
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1359
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1363
    :cond_7
    invoke-virtual {v5, v1}, Ljavax/jmdns/impl/DNSRecord;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5, v1}, Ljavax/jmdns/impl/DNSRecord;->sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getSubtype()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 1364
    :cond_8
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->isSingleValued()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1365
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1366
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Ljavax/jmdns/impl/DNSCache;->replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1369
    :cond_9
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1370
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1373
    :cond_a
    invoke-virtual {v1, v5}, Ljavax/jmdns/impl/DNSRecord;->resetTTL(Ljavax/jmdns/impl/DNSRecord;)V

    .line 1374
    move-object v5, v1

    goto :goto_1

    .line 1378
    :cond_b
    if-nez v3, :cond_4

    .line 1379
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1380
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1396
    .end local v1    # "cachedRecord":Ljavax/jmdns/impl/DNSRecord;
    .end local v7    # "unique":Z
    .restart local v6    # "typeAdded":Z
    :cond_c
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    .line 1397
    if-eqz v6, :cond_d

    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-ne v0, v8, :cond_d

    .line 1398
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1403
    .end local v6    # "typeAdded":Z
    :cond_d
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    if-eq v0, v8, :cond_5

    .line 1404
    invoke-virtual {p0, p2, p3, v5, v0}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    goto :goto_2
.end method

.method handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 8
    .param p1, "msg"    # Ljavax/jmdns/impl/DNSIncoming;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1417
    .local v4, "now":J
    const/4 v0, 0x0

    .line 1418
    .local v0, "hostConflictDetected":Z
    const/4 v3, 0x0

    .line 1420
    .local v3, "serviceConflictDetected":Z
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 1421
    .local v2, "newRecord":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v2, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->handleRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 1423
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1424
    :cond_0
    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_0

    .line 1426
    :cond_1
    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_0

    .line 1431
    .end local v2    # "newRecord":Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    .line 1432
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1434
    :cond_4
    return-void
.end method

.method handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 7
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 868
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 870
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 871
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 872
    move-object v4, p1

    .line 873
    .local v4, "localEvent":Ljavax/jmdns/ServiceEvent;
    monitor-enter v1

    .line 874
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 875
    .local v2, "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 877
    .local v3, "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Ljavax/jmdns/impl/JmDNSImpl$1;

    invoke-direct {v6, p0, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 875
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v3    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 887
    .end local v4    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :cond_0
    return-void
.end method

.method incrementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1176
    move-object v0, p1

    .line 1178
    .local v0, "aName":Ljava/lang/String;
    const/16 v4, 0x28

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1179
    .local v2, "l":I
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1180
    .local v3, "r":I
    if-ltz v2, :cond_0

    if-ge v2, v3, :cond_0

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .end local v2    # "l":I
    .end local v3    # "r":I
    :goto_0
    return-object v0

    .line 1183
    .restart local v2    # "l":I
    .restart local v3    # "r":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1185
    .end local v2    # "l":I
    .end local v3    # "r":I
    :catch_0
    move-exception v1

    .line 1186
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ioLock()V
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2181
    return-void
.end method

.method public ioUnlock()V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2185
    return-void
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 580
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isProbing()Z

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1908
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1916
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cleanCache()V

    .line 1925
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "loType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1928
    .local v2, "newCollectorCreated":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1929
    :cond_0
    new-array v3, v4, [Ljavax/jmdns/ServiceInfo;

    .line 1944
    :goto_0
    return-object v3

    .line 1932
    :cond_1
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1933
    .local v0, "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-nez v0, :cond_2

    .line 1934
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v6, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move v2, v3

    .line 1935
    :goto_1
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1936
    .restart local v0    # "collector":Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-eqz v2, :cond_2

    .line 1937
    invoke-direct {p0, p1, v0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 1940
    :cond_2
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1941
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".collector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1944
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->list(J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 1934
    goto :goto_1

    .line 1944
    :cond_5
    new-array v3, v4, [Ljavax/jmdns/ServiceInfo;

    goto :goto_0
.end method

.method public listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1952
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->listBySubtype(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1960
    new-instance v5, Ljava/util/HashMap;

    const/4 v8, 0x5

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 1961
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "arr$":[Ljavax/jmdns/ServiceInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1962
    .local v2, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1963
    .local v7, "subtype":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1964
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1969
    .end local v2    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v7    # "subtype":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 1970
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1971
    .restart local v7    # "subtype":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1972
    .local v3, "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1975
    .end local v3    # "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    .end local v7    # "subtype":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public printServices()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1854
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1855
    return-void
.end method

.method public purgeStateTimer()V
    .locals 2

    .prologue
    .line 1565
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeStateTimer()V

    .line 1566
    return-void
.end method

.method public purgeTimer()V
    .locals 2

    .prologue
    .line 1556
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->purgeTimer()V

    .line 1557
    return-void
.end method

.method public recover()V
    .locals 5

    .prologue
    .line 1690
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recover()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_recoverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1702
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1703
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recover() thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1704
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$6;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".recover()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl$6;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    .line 1713
    .local v0, "recover":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1715
    .end local v0    # "recover":Ljava/lang/Thread;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->recoverState()Z

    move-result v0

    return v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1770

    .line 986
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This DNS is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 989
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 991
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 992
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 993
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered with a single instamce of JmDNS."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 994
    :cond_2
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 995
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A service information can only be registered once."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 998
    :cond_3
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1000
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 1003
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    .line 1004
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setServer(Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet4Address;)V

    .line 1006
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->addAddress(Ljava/net/Inet6Address;)V

    .line 1008
    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForAnnounced(J)Z

    .line 1010
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    .line 1011
    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1012
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    goto :goto_0

    .line 1015
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1016
    invoke-virtual {v0, v4, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForAnnounced(J)Z

    .line 1018
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1019
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerService() JmDNS registered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1021
    :cond_5
    return-void
.end method

.method public registerServiceType(Ljava/lang/String;)Z
    .locals 23
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1082
    const/16 v18, 0x0

    .line 1083
    .local v18, "typeAdded":Z
    invoke-static/range {p1 .. p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 1084
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v19, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1085
    .local v6, "domain":Ljava/lang/String;
    sget-object v19, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1086
    .local v14, "protocol":Ljava/lang/String;
    sget-object v19, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1087
    .local v4, "application":Ljava/lang/String;
    sget-object v19, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1089
    .local v16, "subtype":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1090
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1091
    .local v11, "loname":Ljava/lang/String;
    sget-object v19, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v20, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1092
    sget-object v20, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ".registering service type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " as: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " subtype: "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1094
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "dns-sd"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "in-addr.arpa"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ip6.arpa"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    new-instance v20, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_4

    const/16 v18, 0x1

    .line 1096
    :goto_3
    if-eqz v18, :cond_5

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1098
    .local v10, "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    new-instance v7, Ljavax/jmdns/impl/ServiceEventImpl;

    const-string v19, ""

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v13, v1, v2}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1099
    .local v7, "event":Ljavax/jmdns/ServiceEvent;
    move-object v5, v10

    .local v5, "arr$":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_5

    aget-object v15, v5, v8

    .line 1100
    .local v15, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v20, Ljavax/jmdns/impl/JmDNSImpl$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v7}, Ljavax/jmdns/impl/JmDNSImpl$2;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1099
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1089
    .end local v5    # "arr$":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .end local v7    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .end local v11    # "loname":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    :cond_1
    const-string v19, ""

    goto/16 :goto_0

    :cond_2
    const-string v19, ""

    goto/16 :goto_1

    .line 1092
    .restart local v11    # "loname":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_3
    const-string v19, ""

    goto/16 :goto_2

    .line 1095
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 1110
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    .line 1112
    .local v17, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 1113
    monitor-enter v17

    .line 1114
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->contains(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1115
    const/16 v18, 0x1

    .line 1116
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->add(Ljava/lang/String;)Z

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    .line 1118
    .restart local v10    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    new-instance v7, Ljavax/jmdns/impl/ServiceEventImpl;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "._sub."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1119
    .restart local v7    # "event":Ljavax/jmdns/ServiceEvent;
    move-object v5, v10

    .restart local v5    # "arr$":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    array-length v9, v5

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_5
    if-ge v8, v9, :cond_6

    aget-object v15, v5, v8

    .line 1120
    .restart local v15    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v20, Ljavax/jmdns/impl/JmDNSImpl$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v7}, Ljavax/jmdns/impl/JmDNSImpl$3;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1119
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1129
    .end local v5    # "arr$":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .end local v7    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "list":[Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    .end local v15    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    :cond_6
    monitor-exit v17

    .line 1132
    .end local v17    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    :cond_7
    return v18

    .line 1129
    .restart local v17    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    :catchall_0
    move-exception v19

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 572
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 573
    return-void
.end method

.method public removeListener(Ljavax/jmdns/impl/DNSListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/impl/DNSListener;

    .prologue
    .line 1223
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1224
    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .prologue
    .line 968
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, "loType":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 970
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-eqz v0, :cond_1

    .line 971
    monitor-enter v0

    .line 972
    :try_start_0
    new-instance v2, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;-><init>(Ljavax/jmdns/ServiceListener;Z)V

    .line 973
    .local v2, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 974
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 977
    :cond_0
    monitor-exit v0

    .line 979
    .end local v2    # "status":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :cond_1
    return-void

    .line 977
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;

    .prologue
    .line 910
    new-instance v0, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;-><init>(Ljavax/jmdns/ServiceTypeListener;Z)V

    .line 911
    .local v0, "status":Ljavax/jmdns/impl/ListenerStatus$ServiceTypeListenerStatus;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 912
    return-void
.end method

.method public renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 3
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    .line 1233
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 1234
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceResolver(Ljava/lang/String;)V

    .line 1238
    :cond_0
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 840
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 855
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 856
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 847
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 848
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 863
    const-string v1, ""

    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 864
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 865
    return-void
.end method

.method resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "persistent"    # Z

    .prologue
    .line 741
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cleanCache()V

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "loType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 744
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    invoke-direct {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 745
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceListener;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;Z)V

    .line 749
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 751
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    .line 753
    return-object v0
.end method

.method public respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 1
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;

    .prologue
    .line 1483
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    .line 1485
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-ne v0, p1, :cond_0

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 1491
    return-void

    .line 1489
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    throw v0
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->revertState()Z

    move-result v0

    return v0
.end method

.method public send(Ljavax/jmdns/impl/DNSOutgoing;)V
    .locals 9
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1530
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object v1

    .line 1531
    .local v1, "message":[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v1

    iget-object v6, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    sget v7, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-direct {v4, v1, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1533
    .local v4, "packet":Ljava/net/DatagramPacket;
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1535
    :try_start_0
    new-instance v3, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {v3, v4}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 1536
    .local v3, "msg":Ljavax/jmdns/impl/DNSIncoming;
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1537
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") JmDNS out:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    .end local v3    # "msg":Ljavax/jmdns/impl/DNSIncoming;
    :cond_0
    :goto_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 1544
    .local v2, "ms":Ljava/net/MulticastSocket;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1545
    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1548
    .end local v1    # "message":[B
    .end local v2    # "ms":Ljava/net/MulticastSocket;
    .end local v4    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    return-void

    .line 1539
    .restart local v1    # "message":[B
    .restart local v4    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDelegate(Ljavax/jmdns/JmDNS$Delegate;)Ljavax/jmdns/JmDNS$Delegate;
    .locals 1
    .param p1, "delegate"    # Ljavax/jmdns/JmDNS$Delegate;

    .prologue
    .line 2218
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    .line 2219
    .local v0, "previous":Ljavax/jmdns/JmDNS$Delegate;
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_delegate:Ljavax/jmdns/JmDNS$Delegate;

    .line 2220
    return-object v0
.end method

.method public setLastThrottleIncrement(J)V
    .locals 1
    .param p1, "lastThrottleIncrement"    # J

    .prologue
    .line 2160
    iput-wide p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    .line 2161
    return-void
.end method

.method setLocalHost(Ljavax/jmdns/impl/HostInfo;)V
    .locals 0
    .param p1, "localHost"    # Ljavax/jmdns/impl/HostInfo;

    .prologue
    .line 2196
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 2197
    return-void
.end method

.method public setPlannedAnswer(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 0
    .param p1, "plannedAnswer"    # Ljavax/jmdns/impl/DNSIncoming;

    .prologue
    .line 2188
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 2189
    return-void
.end method

.method public setThrottle(I)V
    .locals 0
    .param p1, "throttle"    # I

    .prologue
    .line 2168
    iput p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    .line 2169
    return-void
.end method

.method public startAnnouncer()V
    .locals 2

    .prologue
    .line 1601
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startAnnouncer()V

    .line 1602
    return-void
.end method

.method public startCanceler()V
    .locals 2

    .prologue
    .line 1619
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startCanceler()V

    .line 1620
    return-void
.end method

.method public startProber()V
    .locals 2

    .prologue
    .line 1592
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startProber()V

    .line 1593
    return-void
.end method

.method public startReaper()V
    .locals 2

    .prologue
    .line 1628
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startReaper()V

    .line 1629
    return-void
.end method

.method public startRenewer()V
    .locals 2

    .prologue
    .line 1610
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startRenewer()V

    .line 1611
    return-void
.end method

.method public startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "port"    # I

    .prologue
    .line 1664
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/jmdns/impl/DNSTaskStarter;->startResponder(Ljavax/jmdns/impl/DNSIncoming;I)V

    .line 1665
    return-void
.end method

.method public startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 2
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .prologue
    .line 1637
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceInfoResolver(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    .line 1638
    return-void
.end method

.method public startServiceResolver(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1655
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/jmdns/impl/DNSTaskStarter;->startServiceResolver(Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public startTypeResolver()V
    .locals 2

    .prologue
    .line 1646
    invoke-static {}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v0

    invoke-interface {v0}, Ljavax/jmdns/impl/DNSTaskStarter;->startTypeResolver()V

    .line 1647
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x800

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1863
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v4, "\t---- Local Host -----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1866
    const-string v4, "\n\t---- Services -----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1868
    .local v2, "key":Ljava/lang/String;
    const-string v4, "\n\t\tService: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1873
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    const-string v4, "\t---- Types ----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1876
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;

    .line 1877
    .local v3, "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    const-string v4, "\n\t\tType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "no subtypes"

    .end local v3    # "subtypes":Ljavax/jmdns/impl/JmDNSImpl$ServiceTypeEntry;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1882
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    const-string v4, "\t---- Service Collectors ----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1887
    .restart local v2    # "key":Ljava/lang/String;
    const-string v4, "\n\t\tService Collector: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1892
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    const-string v4, "\t---- Service Listeners ----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1895
    .restart local v2    # "key":Ljava/lang/String;
    const-string v4, "\n\t\tService Listener: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1900
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterAllServices()V
    .locals 6

    .prologue
    .line 1049
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v4, "unregisterAllServices()"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1053
    :cond_0
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1054
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1055
    .local v1, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v1, :cond_1

    .line 1056
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1057
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling service info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1059
    :cond_2
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    goto :goto_0

    .line 1062
    .end local v1    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 1064
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1065
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1066
    .restart local v1    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v1, :cond_4

    .line 1067
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1068
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait for service info cancel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1070
    :cond_5
    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 1071
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1075
    .end local v1    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .locals 4
    .param p1, "infoAbstract"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 1028
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 1030
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    .line 1032
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 1033
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 1035
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1036
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterService() JmDNS unregistered service as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing unregistered service info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .locals 17
    .param p1, "now"    # J
    .param p3, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p4, "operation"    # Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .prologue
    .line 1254
    const/4 v9, 0x0

    .line 1255
    .local v9, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    monitor-enter v14

    .line 1256
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .local v10, "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1258
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/DNSListener;

    .line 1259
    .local v8, "listener":Ljavax/jmdns/impl/DNSListener;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v13

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface {v8, v13, v0, v1, v2}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_0

    .line 1257
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "listener":Ljavax/jmdns/impl/DNSListener;
    .end local v10    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :catchall_0
    move-exception v13

    :goto_1
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 1262
    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :cond_0
    sget-object v13, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual/range {p3 .. p3}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1265
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v3

    .line 1266
    .local v3, "event":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1268
    :cond_1
    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v6

    .line 1269
    .local v6, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1270
    new-instance v4, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v6}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .local v4, "event":Ljavax/jmdns/ServiceEvent;
    move-object v3, v4

    .line 1274
    .end local v4    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v6    # "info":Ljavax/jmdns/ServiceInfo;
    .restart local v3    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1276
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    if-eqz v7, :cond_5

    .line 1277
    monitor-enter v7

    .line 1278
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1279
    .local v12, "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1283
    :goto_2
    sget-object v13, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1284
    sget-object v13, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".updating record for event: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " list "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " operation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1286
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1287
    move-object v11, v3

    .line 1289
    .local v11, "localEvent":Ljavax/jmdns/ServiceEvent;
    sget-object v13, Ljavax/jmdns/impl/JmDNSImpl$7;->$SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation:[I

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 1325
    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v11    # "localEvent":Ljavax/jmdns/ServiceEvent;
    .end local v12    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :cond_4
    return-void

    .line 1279
    .restart local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :catchall_1
    move-exception v13

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v13

    .line 1281
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .restart local v12    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    goto :goto_2

    .line 1291
    .restart local v11    # "localEvent":Ljavax/jmdns/ServiceEvent;
    :pswitch_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1292
    .local v8, "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual {v8}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->isSynchronous()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1293
    invoke-virtual {v8, v11}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_3

    .line 1295
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Ljavax/jmdns/impl/JmDNSImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v11}, Ljavax/jmdns/impl/JmDNSImpl$4;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    .line 1306
    .end local v8    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    :pswitch_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    .line 1307
    .restart local v8    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    invoke-virtual {v8}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->isSynchronous()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1308
    invoke-virtual {v8, v11}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_4

    .line 1310
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/JmDNSImpl;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Ljavax/jmdns/impl/JmDNSImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v11}, Ljavax/jmdns/impl/JmDNSImpl$5;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4

    .line 1257
    .end local v3    # "event":Ljavax/jmdns/ServiceEvent;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    .end local v8    # "listener":Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
    .end local v11    # "localEvent":Ljavax/jmdns/ServiceEvent;
    .end local v12    # "serviceListenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;>;"
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    goto/16 :goto_1

    .line 1289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 644
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 652
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method
