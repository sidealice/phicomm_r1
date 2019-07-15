.class public Ljavax/jmdns/impl/tasks/Responder;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "Responder.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _in:Ljavax/jmdns/impl/DNSIncoming;

.field private final _unicast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Ljavax/jmdns/impl/tasks/Responder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;I)V
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "port"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 38
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    .line 39
    sget v0, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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

.method public run()V
    .locals 14

    .prologue
    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    iget-object v11, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v10, v11}, Ljavax/jmdns/impl/JmDNSImpl;->respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 100
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v9, "questions":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/DNSQuestion;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v1, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 106
    :try_start_0
    iget-object v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v10}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/DNSQuestion;

    .line 107
    .local v8, "question":Ljavax/jmdns/impl/DNSQuestion;
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "run() JmDNS responding to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-boolean v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-eqz v10, :cond_1

    .line 113
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v8, v10, v1}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "run() exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/JmDNSImpl;->close()V

    .line 156
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 120
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 121
    .local v6, "now":J
    iget-object v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v10}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 122
    .local v4, "knownAnswer":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v4, v6, v7}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 123
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 125
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    .end local v4    # "knownAnswer":Ljavax/jmdns/impl/DNSRecord;
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 132
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 133
    sget-object v10, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "run() JmDNS responding"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 135
    :cond_6
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    const v11, 0x8400

    iget-boolean v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    iget-object v12, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v12}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v12

    invoke-direct {v5, v11, v10, v12}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 136
    .local v5, "out":Ljavax/jmdns/impl/DNSOutgoing;
    iget-object v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v10}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v10

    invoke-virtual {v5, v10}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 137
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/impl/DNSQuestion;

    .line 138
    .restart local v8    # "question":Ljavax/jmdns/impl/DNSQuestion;
    if-eqz v8, :cond_7

    .line 139
    invoke-virtual {p0, v5, v8}, Ljavax/jmdns/impl/tasks/Responder;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v5

    goto :goto_4

    .line 135
    .end local v5    # "out":Ljavax/jmdns/impl/DNSOutgoing;
    .end local v8    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 142
    .restart local v5    # "out":Ljavax/jmdns/impl/DNSOutgoing;
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 143
    .local v0, "answer":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v0, :cond_a

    .line 144
    iget-object v10, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0, v5, v10, v0}, Ljavax/jmdns/impl/tasks/Responder;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v5

    goto :goto_5

    .line 148
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_b
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public start(Ljava/util/Timer;)V
    .locals 7
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "iAmTheOnlyOne":Z
    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 75
    .local v3, "question":Ljavax/jmdns/impl/DNSQuestion;
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start() question="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v2

    .line 79
    if-nez v2, :cond_0

    .line 83
    .end local v3    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_2
    if-eqz v2, :cond_6

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v0, 0x0

    .line 84
    .local v0, "delay":I
    :goto_0
    if-gez v0, :cond_3

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_3
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start() Responder chosen delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 90
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 91
    int-to-long v4, v0

    invoke-virtual {p1, p0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 93
    :cond_5
    return-void

    .line 83
    .end local v0    # "delay":I
    :cond_6
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v4

    const/16 v5, 0x60

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    iget-object v5, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming;->elapseSinceArrival()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
