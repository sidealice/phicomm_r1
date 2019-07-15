.class public Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;
.super Ljavax/jmdns/impl/ListenerStatus;
.source "ListenerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/ListenerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceListenerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/jmdns/impl/ListenerStatus",
        "<",
        "Ljavax/jmdns/ServiceListener;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _addedServices:Ljava/util/concurrent/ConcurrentMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/ServiceListener;Z)V
    .locals 2
    .param p1, "listener"    # Ljavax/jmdns/ServiceListener;
    .param p2, "synch"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/ListenerStatus;-><init>(Ljava/util/EventListener;Z)V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    return-void
.end method

.method private static final _sameInfo(Ljavax/jmdns/ServiceInfo;Ljavax/jmdns/ServiceInfo;)Z
    .locals 6
    .param p0, "info"    # Ljavax/jmdns/ServiceInfo;
    .param p1, "lastInfo"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    const/4 v3, 0x0

    .line 117
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v2

    .line 121
    .local v2, "text":[B
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v1

    .line 122
    .local v1, "lastText":[B
    array-length v4, v2

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 124
    aget-byte v4, v2, v0

    aget-byte v5, v1, v0

    if-ne v4, v5, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 5
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "qualifiedName":Ljava/lang/String;
    iget-object v2, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceListener;

    invoke-interface {v2, p1}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 61
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 62
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceListener;

    invoke-interface {v2, p1}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 68
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v2, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service Added called for a service already added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "qualifiedName":Ljava/lang/String;
    iget-object v1, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceListener;

    invoke-interface {v1, p1}, Ljavax/jmdns/ServiceListener;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v1, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Removed called for a service already removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 6
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 94
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "qualifiedName":Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 97
    .local v1, "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-static {v0, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_sameInfo(Ljavax/jmdns/ServiceInfo;Ljavax/jmdns/ServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    if-nez v1, :cond_1

    .line 99
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceListener;

    invoke-interface {v3, p1}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v1    # "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    .restart local v1    # "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    .restart local v2    # "qualifiedName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceListener;

    invoke-interface {v3, p1}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v1    # "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 108
    .restart local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .restart local v1    # "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    .restart local v2    # "qualifiedName":Ljava/lang/String;
    :cond_2
    :try_start_2
    sget-object v3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service Resolved called for a service already resolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "previousServiceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :cond_3
    sget-object v3, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service Resolved called for an unresolved event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v0, "aLog":Ljava/lang/StringBuilder;
    const-string v3, "[Status for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceListener;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const-string v3, " no type event "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :goto_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 141
    :cond_0
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v3, p0, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->_addedServices:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "service":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    .end local v2    # "service":Ljava/lang/String;
    :cond_1
    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
