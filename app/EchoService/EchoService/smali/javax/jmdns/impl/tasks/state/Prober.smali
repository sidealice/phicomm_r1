.class public Ljavax/jmdns/impl/tasks/state/Prober;
.super Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.source "Prober.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Ljavax/jmdns/impl/tasks/state/Prober;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 31
    invoke-static {}, Ljavax/jmdns/impl/tasks/state/Prober;->defaultTTL()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 33
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 34
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->associate(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected advanceTask()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 154
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->cancel()Z

    .line 157
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->startAnnouncer()V

    .line 159
    :cond_0
    return-void
.end method

.method protected buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    move-object v2, p1

    .line 117
    .local v2, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 118
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljavax/jmdns/impl/HostInfo;->answers(ZI)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 119
    .local v0, "answer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v2, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_0
    return-object v2
.end method

.method protected buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 10
    .param p1, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;
    .param p2, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    move-object v9, p2

    .line 131
    .local v9, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v0, v1, v2, v3}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v9

    .line 133
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v5

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v6

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-virtual {p0, v9, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v9

    .line 135
    return-object v9
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->removeAssociation()V

    .line 80
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    move-result v0

    return v0
.end method

.method protected checkRunCondition()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prober("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTaskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "probing"

    return-object v0
.end method

.method protected recoverTask(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    .line 145
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .locals 8
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 62
    .local v6, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getLastThrottleIncrement()J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljavax/jmdns/impl/JmDNSImpl;->setLastThrottleIncrement(J)V

    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 70
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 72
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
