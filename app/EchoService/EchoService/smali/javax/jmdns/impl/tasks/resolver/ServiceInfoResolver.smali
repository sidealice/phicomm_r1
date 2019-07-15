.class public Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;
.super Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;
.source "ServiceInfoResolver.java"


# instance fields
.field private final _info:Ljavax/jmdns/impl/ServiceInfoImpl;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 5
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "info"    # Ljavax/jmdns/impl/ServiceInfoImpl;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 28
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 29
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 30
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljavax/jmdns/impl/JmDNSImpl;->addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p1

    .line 63
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    .local v2, "now":J
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 67
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v1, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 72
    .end local v2    # "now":J
    :cond_0
    return-object v0
.end method

.method protected addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 81
    move-object v0, p1

    .line 82
    .local v0, "newOut":Ljavax/jmdns/impl/DNSOutgoing;
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 84
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 85
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 87
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z

    move-result v0

    .line 50
    .local v0, "result":Z
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->removeListener(Ljavax/jmdns/impl/DNSListener;)V

    .line 53
    :cond_0
    return v0
.end method

.method protected description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querying service info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfoResolver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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
