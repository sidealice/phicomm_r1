.class public Ljavax/jmdns/impl/DNSRecord$Text;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field private final _text:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "text"    # [B

    .prologue
    .line 541
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 542
    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    .end local p5    # "text":[B
    :goto_0
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    .line 543
    return-void

    .line 542
    .restart local p5    # "text":[B
    :cond_0
    sget-object p5, Ljavax/jmdns/impl/DNSRecord$Text;->EMPTY_TXT:[B

    goto :goto_0
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
    .line 601
    return-object p5
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 619
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSRecord$Text;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 620
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 621
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 610
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Text;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v0
.end method

.method getText()[B
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleValued()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 6
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    const/4 v3, 0x0

    .line 559
    instance-of v4, p1, Ljavax/jmdns/impl/DNSRecord$Text;

    if-nez v4, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 562
    check-cast v2, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 563
    .local v2, "txt":Ljavax/jmdns/impl/DNSRecord$Text;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    if-nez v4, :cond_2

    iget-object v4, v2, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    if-nez v4, :cond_0

    .line 566
    :cond_2
    iget-object v4, v2, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v4, v4

    iget-object v5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v5, v5

    if-ne v4, v5, :cond_0

    .line 569
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v0, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 570
    iget-object v4, v2, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    aget-byte v5, v5, v0

    if-ne v4, v5, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 574
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 630
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " text: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v0, v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 632
    return-void

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .prologue
    .line 554
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 555
    return-void
.end method
