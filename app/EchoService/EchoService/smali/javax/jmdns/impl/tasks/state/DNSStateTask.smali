.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSStateTask.java"


# static fields
.field private static _defaultTTL:I

.field static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _taskState:Ljavax/jmdns/impl/constants/DNSState;

.field private final _ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    .line 32
    const/16 v0, 0x19

    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "ttl"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 60
    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    .line 61
    return-void
.end method

.method public static defaultTTL()I
    .locals 1

    .prologue
    .line 42
    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return v0
.end method

.method public static setDefaultTTL(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 51
    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 52
    return-void
.end method


# virtual methods
.method protected advanceObjectsState(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSStatefulObject;

    .line 162
    .local v1, "object":Ljavax/jmdns/impl/DNSStatefulObject;
    monitor-enter v1

    .line 163
    :try_start_0
    invoke-interface {v1, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 164
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 167
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "object":Ljavax/jmdns/impl/DNSStatefulObject;
    :cond_0
    return-void
.end method

.method protected abstract advanceTask()V
.end method

.method protected associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 4
    .param p1, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    monitor-enter v3

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 81
    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 83
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected abstract buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract checkRunCondition()Z
.end method

.method protected abstract createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public getTTL()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    return v0
.end method

.method public abstract getTaskDescription()Ljava/lang/String;
.end method

.method protected getTaskState()Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method protected abstract recoverTask(Ljava/lang/Throwable;)V
.end method

.method protected removeAssociation()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    monitor-enter v3

    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 92
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v1, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v1    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    goto :goto_0

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 98
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->createOugoing()Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v4

    .line 104
    .local v4, "out":Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->checkRunCondition()Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    .line 149
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v6, "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v9

    invoke-virtual {v7, p0, v9}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    sget-object v7, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run() JmDNS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v4

    .line 116
    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/ServiceInfo;

    .line 119
    .local v5, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v0, v5

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v3, v0

    .line 121
    .local v3, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :try_start_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v7

    invoke-virtual {v3, p0, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    sget-object v7, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v3, v4}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v4

    .line 127
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v5    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v6    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run() exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->recoverTask(Ljava/lang/Throwable;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceTask()V

    goto/16 :goto_0

    .line 116
    .restart local v6    # "stateObjects":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 129
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 130
    sget-object v7, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 134
    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method protected setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 0
    .param p1, "taskState"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 186
    return-void
.end method
