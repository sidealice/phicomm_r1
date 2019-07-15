.class public Ljavax/jmdns/impl/DNSRecord$Service;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private final _port:I

.field private final _priority:I

.field private final _server:Ljava/lang/String;

.field private final _weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 640
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z
    .param p4, "ttl"    # I
    .param p5, "priority"    # I
    .param p6, "weight"    # I
    .param p7, "port"    # I
    .param p8, "server"    # Ljava/lang/String;

    .prologue
    .line 647
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 648
    iput p5, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    .line 649
    iput p6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    .line 650
    iput p7, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    .line 651
    iput-object p8, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    .line 652
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 10
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
    const/4 v3, 0x1

    .line 795
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 796
    .local v9, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v9, :cond_0

    .line 797
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 798
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/16 v4, 0x19

    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v5

    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v6

    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ljavax/jmdns/impl/JmDNSImpl;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object p5

    .line 802
    .end local p5    # "out":Ljavax/jmdns/impl/DNSOutgoing;
    :cond_0
    return-object p5

    .line 797
    .restart local p5    # "out":Ljavax/jmdns/impl/DNSOutgoing;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    return v0
.end method

.method getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 820
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSRecord$Service;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    move-object v1, v0

    .line 821
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 832
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
    .line 811
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 13
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "expirationTime"    # J

    .prologue
    .line 725
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 726
    .local v11, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAnnouncing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAnnounced()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 727
    :cond_1
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQuery() Conflicting probe detected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x1

    const/16 v4, 0x19

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v5

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v6

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v7

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 732
    .local v0, "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got conflicting probe from ourselves\nincoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "local   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Service;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v9

    .line 741
    .local v9, "comparison":I
    if-nez v9, :cond_3

    .line 746
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    const-string v2, "handleQuery() Ignoring a identical service query"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 747
    const/4 v1, 0x0

    .line 770
    .end local v0    # "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    .end local v9    # "comparison":I
    :goto_1
    return v1

    .line 735
    .restart local v0    # "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    :catch_0
    move-exception v10

    .line 736
    .local v10, "e":Ljava/io/IOException;
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "IOException"

    invoke-virtual {v1, v2, v3, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 751
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "comparison":I
    :cond_3
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez v9, :cond_4

    .line 753
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 754
    .local v12, "oldName":Ljava/lang/String;
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQuery() Lost tie break: new unique name chosen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 767
    const/4 v1, 0x1

    goto :goto_1

    .line 764
    .end local v12    # "oldName":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 770
    .end local v0    # "localService":Ljavax/jmdns/impl/DNSRecord$Service;
    .end local v9    # "comparison":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 5
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 775
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 776
    .local v0, "info":Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_2

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    :cond_0
    sget-object v2, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    const-string v3, "handleResponse() Denial detected"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "oldName":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v2, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse() New unique name chose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 787
    .end local v1    # "oldName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 788
    const/4 v2, 0x1

    .line 790
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSingleValued()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 4
    .param p1, "other"    # Ljavax/jmdns/impl/DNSRecord;

    .prologue
    const/4 v1, 0x0

    .line 711
    instance-of v2, p1, Ljavax/jmdns/impl/DNSRecord$Service;

    if-nez v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 714
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 715
    .local v0, "s":Ljavax/jmdns/impl/DNSRecord$Service;
    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    iget v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    iget-object v3, v0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dout"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 674
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 675
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 676
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 678
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 842
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " server: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .prologue
    const/4 v2, 0x0

    .line 656
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 657
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 658
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 659
    sget-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 669
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 667
    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_0
.end method
