.class public abstract Ljavax/jmdns/impl/DNSRecord$Address;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Address"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field _addr:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z
    .param p5, "ttl"    # I
    .param p6, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 270
    iput-object p6, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    .line 271
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z
    .param p5, "ttl"    # I
    .param p6, "rawAddress"    # [B

    .prologue
    .line 274
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 276
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "exception":Ljava/net/UnknownHostException;
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Address() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 385
    return-object p5
.end method

.method getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 406
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 407
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

    .line 394
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    const/4 v6, 0x0

    check-cast v6, [B

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 396
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 10
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    const/4 v5, 0x0

    .line 331
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v6

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->isUnique()Z

    move-result v8

    const/16 v9, 0x19

    invoke-virtual {v6, v7, v8, v9}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v3

    .line 333
    .local v3, "localAddress":Ljavax/jmdns/impl/DNSRecord$Address;
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSRecord$Address;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v0

    .line 335
    .local v0, "comparison":I
    if-nez v0, :cond_1

    .line 340
    sget-object v6, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string v7, "handleQuery() Ignoring an identical address query"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 358
    .end local v0    # "comparison":I
    .end local v3    # "localAddress":Ljavax/jmdns/impl/DNSRecord$Address;
    :cond_0
    :goto_0
    return v5

    .line 344
    .restart local v0    # "comparison":I
    .restart local v3    # "localAddress":Ljavax/jmdns/impl/DNSRecord$Address;
    :cond_1
    sget-object v5, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string v6, "handleQuery() Conflicting query detected."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v5

    if-eqz v5, :cond_2

    if-lez v0, :cond_2

    .line 348
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 350
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .local v4, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v2, v4

    .line 351
    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 352
    .local v2, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_1

    .line 355
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v4    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    :cond_2
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 356
    const/4 v5, 0x1

    goto :goto_0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 5
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 366
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    sget-object v3, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string v4, "handleResponse() Denial detected"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 372
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceInfo;

    .local v2, "serviceInfo":Ljavax/jmdns/ServiceInfo;
    move-object v1, v2

    .line 373
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 374
    .local v1, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 377
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v2    # "serviceInfo":Ljavax/jmdns/ServiceInfo;
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 378
    const/4 v3, 0x1

    .line 380
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isSingleValued()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method same(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    const/4 v0, 0x0

    .line 283
    instance-of v1, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method sameName(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    .line 290
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 3
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    const/4 v1, 0x0

    .line 295
    instance-of v2, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 298
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 299
    .local v0, "address":Ljavax/jmdns/impl/DNSRecord$Address;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dout"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 320
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 321
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 322
    aget-byte v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 416
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

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

    .line 418
    return-void

    .line 417
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
