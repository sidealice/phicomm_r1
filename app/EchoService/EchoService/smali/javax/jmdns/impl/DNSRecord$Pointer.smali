.class public Ljavax/jmdns/impl/DNSRecord$Pointer;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pointer"
.end annotation


# instance fields
.field private final _alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 430
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 431
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    .line 432
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p3, "addr"    # Ljava/net/InetAddress;
    .param p4, "port"    # I
    .param p5, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    return-object p5
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 515
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    move-object v3, v1

    .line 516
    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 517
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "domainName":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "serviceName":Ljava/lang/String;
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-direct {v3, p1, v0, v2, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v3
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 10
    .param p1, "persistent"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isServicesDiscoveryMetaQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 497
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 506
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isReverseLookup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    new-instance v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v4

    move-object v9, v6

    check-cast v9, [B

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, p1

    invoke-direct/range {v3 .. v9}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    move-object v0, v3

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isDomainDiscoveryQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    new-instance v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v4

    move-object v9, v6

    check-cast v9, [B

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, p1

    invoke-direct/range {v3 .. v9}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    move-object v0, v3

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 505
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    goto :goto_0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 1
    .param p1, "entry"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 440
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local p1    # "entry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Pointer;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleValued()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 3
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    const/4 v1, 0x0

    .line 450
    instance-of v2, p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    if-nez v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 453
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .line 454
    .local v0, "pointer":Ljavax/jmdns/impl/DNSRecord$Pointer;
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 457
    :cond_2
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    iget-object v2, v0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 528
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " alias: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    return-void

    .line 529
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .prologue
    .line 445
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 446
    return-void
.end method
