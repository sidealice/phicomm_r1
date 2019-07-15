.class public Ljavax/jmdns/impl/JmmDNSImpl;
.super Ljava/lang/Object;
.source "JmmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/JmmDNS;
.implements Ljavax/jmdns/NetworkTopologyListener;
.implements Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _ListenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private final _jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

.field private final _knownMDNS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljavax/jmdns/JmDNS;",
            ">;"
        }
    .end annotation
.end field

.field private final _networkListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/NetworkTopologyListener;",
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

.field private final _timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Ljavax/jmdns/impl/JmmDNSImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_ListenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Multihommed mDNS.Timer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_timer:Ljava/util/Timer;

    .line 73
    new-instance v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;

    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyDiscovery;)V

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->start(Ljava/util/Timer;)V

    .line 74
    return-void
.end method


# virtual methods
.method public addNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/NetworkTopologyListener;

    .prologue
    .line 464
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .prologue
    .line 297
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 298
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1, p1, p2}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_0

    .line 300
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 276
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1, p1}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    goto :goto_0

    .line 278
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    sget-object v4, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    sget-object v4, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancelling JmmDNS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 86
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_ListenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 89
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/JmDNS;

    .line 90
    .local v3, "mDNS":Ljavax/jmdns/JmDNS;
    new-instance v4, Ljavax/jmdns/impl/JmmDNSImpl$1;

    invoke-direct {v4, p0, v3}, Ljavax/jmdns/impl/JmmDNSImpl$1;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/JmDNS;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 104
    .end local v3    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 106
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "exception":Ljava/lang/InterruptedException;
    sget-object v4, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Exception "

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getHostNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 134
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 147
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;

    return-object v3
.end method

.method public getInterfaces()[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 161
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->getInterface()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;

    return-object v3
.end method

.method public getNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 121
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 181
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 190
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
    .locals 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 200
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 201
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/ServiceInfo;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 202
    .local v12, "executor":Ljava/util/concurrent/ExecutorService;
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/jmdns/JmDNS;

    .line 203
    .local v6, "mDNS":Ljavax/jmdns/JmDNS;
    new-instance v3, Ljavax/jmdns/impl/JmmDNSImpl$2;

    move-object v4, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Ljavax/jmdns/impl/JmmDNSImpl$2;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljava/util/Set;Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {v12, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 213
    .end local v6    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 215
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-interface {v12, v0, v1, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v5, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/jmdns/ServiceInfo;

    return-object v3

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "exception":Ljava/lang/InterruptedException;
    sget-object v3, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Exception "

    invoke-virtual {v3, v4, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 10
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .prologue
    .line 491
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 493
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :try_start_1
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 495
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/JmDNS;

    invoke-direct {v4, v7, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/JmDNS;Ljava/net/InetAddress;)V

    .line 497
    .local v4, "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->networkListeners()[Ljavax/jmdns/NetworkTopologyListener;

    move-result-object v1

    .local v1, "arr$":[Ljavax/jmdns/NetworkTopologyListener;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 498
    .local v6, "listener":Ljavax/jmdns/NetworkTopologyListener;
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_ListenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Ljavax/jmdns/impl/JmmDNSImpl$5;

    invoke-direct {v8, p0, v6, v4}, Ljavax/jmdns/impl/JmmDNSImpl$5;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "arr$":[Ljavax/jmdns/NetworkTopologyListener;
    .end local v3    # "i$":I
    .end local v4    # "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    .end local v5    # "len$":I
    .end local v6    # "listener":Ljavax/jmdns/NetworkTopologyListener;
    :cond_0
    monitor-exit p0

    .line 513
    :goto_1
    return-void

    .line 509
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected unhandled exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V
    .locals 11
    .param p1, "event"    # Ljavax/jmdns/NetworkTopologyEvent;

    .prologue
    .line 521
    invoke-virtual {p1}, Ljavax/jmdns/NetworkTopologyEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 523
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :try_start_1
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 525
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/jmdns/JmDNS;

    .line 526
    .local v7, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v7}, Ljavax/jmdns/JmDNS;->close()V

    .line 527
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    invoke-direct {v4, v7, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/JmDNS;Ljava/net/InetAddress;)V

    .line 528
    .local v4, "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmmDNSImpl;->networkListeners()[Ljavax/jmdns/NetworkTopologyListener;

    move-result-object v1

    .local v1, "arr$":[Ljavax/jmdns/NetworkTopologyListener;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v1, v3

    .line 529
    .local v6, "listener":Ljavax/jmdns/NetworkTopologyListener;
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_ListenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Ljavax/jmdns/impl/JmmDNSImpl$6;

    invoke-direct {v9, p0, v6, v4}, Ljavax/jmdns/impl/JmmDNSImpl$6;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyEvent;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "arr$":[Ljavax/jmdns/NetworkTopologyListener;
    .end local v3    # "i$":I
    .end local v4    # "jmdnsEvent":Ljavax/jmdns/NetworkTopologyEvent;
    .end local v5    # "len$":I
    .end local v6    # "listener":Ljavax/jmdns/NetworkTopologyListener;
    .end local v7    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    monitor-exit p0

    .line 544
    :goto_1
    return-void

    .line 540
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected unhandled exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 393
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 403
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 404
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/ServiceInfo;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 405
    .local v8, "executor":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/JmDNS;

    .line 406
    .local v4, "mDNS":Ljavax/jmdns/JmDNS;
    new-instance v1, Ljavax/jmdns/impl/JmmDNSImpl$4;

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/JmmDNSImpl$4;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljava/util/Set;Ljavax/jmdns/JmDNS;Ljava/lang/String;J)V

    invoke-interface {v8, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 416
    .end local v4    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 418
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, p2, p3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/jmdns/ServiceInfo;

    return-object v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "exception":Ljava/lang/InterruptedException;
    sget-object v1, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception "

    invoke-virtual {v1, v2, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
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
    .line 431
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmmDNSImpl;->listBySubtype(Ljava/lang/String;J)Ljava/util/Map;

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
    .line 440
    new-instance v5, Ljava/util/HashMap;

    const/4 v8, 0x5

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 441
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "arr$":[Ljavax/jmdns/ServiceInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 442
    .local v2, "info":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "subtype":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 444
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v7    # "subtype":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 450
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

    .line 451
    .restart local v7    # "subtype":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 452
    .local v3, "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 455
    .end local v3    # "infoForSubType":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    .end local v7    # "subtype":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public networkListeners()[Ljavax/jmdns/NetworkTopologyListener;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/NetworkTopologyListener;

    return-object v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 339
    :try_start_0
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/JmDNS;

    .line 340
    .local v2, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    goto :goto_0

    .line 344
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mDNS":Ljavax/jmdns/JmDNS;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 342
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v3, v0

    invoke-virtual {v3, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V

    .line 343
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    return-void
.end method

.method public registerServiceType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 383
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1, p1}, Ljavax/jmdns/JmDNS;->registerServiceType(Ljava/lang/String;)Z

    goto :goto_0

    .line 385
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public removeNetworkTopologyListener(Ljavax/jmdns/NetworkTopologyListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/jmdns/NetworkTopologyListener;

    .prologue
    .line 473
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljavax/jmdns/ServiceListener;

    .prologue
    .line 308
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 309
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1, p1, p2}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_0

    .line 311
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/jmdns/ServiceTypeListener;

    .prologue
    .line 286
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 287
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1, p1}, Ljavax/jmdns/JmDNS;->removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    goto :goto_0

    .line 289
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v3, 0x0

    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 229
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 246
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 247
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 237
    const-wide/16 v4, 0x1770

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 238
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "persistent"    # Z
    .param p4, "timeout"    # J

    .prologue
    .line 256
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/JmDNS;

    .line 257
    .local v2, "mDNS":Ljavax/jmdns/JmDNS;
    iget-object v9, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_jmDNSExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljavax/jmdns/impl/JmmDNSImpl$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Ljavax/jmdns/impl/JmmDNSImpl$3;-><init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 267
    .end local v2    # "mDNS":Ljavax/jmdns/JmDNS;
    :cond_0
    return-void
.end method

.method public textValueUpdated(Ljavax/jmdns/ServiceInfo;[B)V
    .locals 6
    .param p1, "target"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "value"    # [B

    .prologue
    .line 319
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 320
    :try_start_0
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/JmDNS;

    .line 321
    .local v2, "mDNS":Ljavax/jmdns/JmDNS;
    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    .end local v2    # "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 322
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1, p2}, Ljavax/jmdns/ServiceInfo;->setText([B)V

    goto :goto_0

    .line 328
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 325
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_0
    :try_start_1
    sget-object v3, Ljavax/jmdns/impl/JmmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v5, "We have a mDNS that does not know about the service info being updated."

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v1    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    return-void
.end method

.method public unregisterAllServices()V
    .locals 4

    .prologue
    .line 368
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v3

    .line 369
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/JmDNS;

    .line 370
    .local v1, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    goto :goto_0

    .line 373
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mDNS":Ljavax/jmdns/JmDNS;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 372
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 373
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    return-void
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 353
    iget-object v4, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 354
    :try_start_0
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_knownMDNS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/JmDNS;

    .line 355
    .local v2, "mDNS":Ljavax/jmdns/JmDNS;
    invoke-virtual {v2, p1}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    goto :goto_0

    .line 359
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mDNS":Ljavax/jmdns/JmDNS;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 357
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V

    .line 358
    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    return-void
.end method
