.class public Ljavax/jmdns/impl/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/HostInfo$1;,
        Ljavax/jmdns/impl/HostInfo$HostInfoState;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected _address:Ljava/net/InetAddress;

.field protected _interfaze:Ljava/net/NetworkInterface;

.field protected _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

.field private hostNameCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-direct {v1, p3}, Ljavax/jmdns/impl/HostInfo$HostInfoState;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    iput-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    .line 124
    iput-object p1, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    .line 125
    iput-object p2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "LocalHostInfo() exception "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 214
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDNS4ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .locals 8
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".in-addr.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 242
    .local v7, "rawAddress":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "address":Ljava/lang/String;
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".in-addr.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "rawAddress":[B
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDNS6ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .locals 6
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ip6.arpa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loopbackAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "exception":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public static newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)Ljavax/jmdns/impl/HostInfo;
    .locals 10
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "jmdnsName"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v5, 0x0

    .line 68
    .local v5, "localhost":Ljavax/jmdns/impl/HostInfo;
    const-string v0, ""

    .line 69
    .local v0, "aName":Ljava/lang/String;
    move-object v1, p0

    .line 71
    .local v1, "addr":Ljava/net/InetAddress;
    if-nez v1, :cond_5

    .line 72
    :try_start_0
    const-string v6, "net.mdns.interface"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "ip":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 74
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    sget-object v6, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    const-string v7, "Could not find any address beside the loopback."

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 92
    .end local v4    # "ip":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v6, "in-addr.arpa"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    :cond_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_6

    move-object v0, p2

    .line 102
    :cond_3
    :goto_2
    const/16 v6, 0x2e

    const/16 v7, 0x2d

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".local."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v5, Ljavax/jmdns/impl/HostInfo;

    .end local v5    # "localhost":Ljavax/jmdns/impl/HostInfo;
    invoke-direct {v5, v1, v0, p1}, Ljavax/jmdns/impl/HostInfo;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 105
    .restart local v5    # "localhost":Ljavax/jmdns/impl/HostInfo;
    return-object v5

    .line 76
    .restart local v4    # "ip":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    invoke-static {}, Ljavax/jmdns/NetworkTopologyDiscovery$Factory;->getInstance()Ljavax/jmdns/NetworkTopologyDiscovery;

    move-result-object v6

    invoke-interface {v6}, Ljavax/jmdns/NetworkTopologyDiscovery;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    .line 80
    .local v2, "addresses":[Ljava/net/InetAddress;
    array-length v6, v2

    if-lez v6, :cond_0

    .line 81
    const/4 v6, 0x0

    aget-object v1, v2, v6

    goto :goto_0

    .line 90
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    .end local v4    # "ip":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_6
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    sget-object v6, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not intialize the host network interface on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "because of an error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Ljavax/jmdns/impl/HostInfo;->loopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 99
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    move-object v0, p2

    :goto_3
    goto :goto_2

    :cond_7
    const-string v0, "computer"

    goto :goto_3
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 296
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public answers(ZI)Ljava/util/Collection;
    .locals 2
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 273
    .local v0, "answer":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    invoke-direct {p0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    return-object v1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 320
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 321
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z
    .locals 5
    .param p1, "record"    # Ljavax/jmdns/impl/DNSRecord$Address;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->isUnique()Z

    move-result v3

    const/16 v4, 0x19

    invoke-virtual {p0, v2, v3, v4}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 163
    .local v0, "hostAddress":Ljavax/jmdns/impl/DNSRecord$Address;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameType(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 166
    :cond_0
    return v1
.end method

.method getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 2
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .prologue
    .line 199
    sget-object v0, Ljavax/jmdns/impl/HostInfo$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getDNSReverseAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;
    .locals 2
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "unique"    # Z
    .param p3, "ttl"    # I

    .prologue
    .line 225
    sget-object v0, Ljavax/jmdns/impl/HostInfo$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS4ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-direct {p0, p2, p3}, Ljavax/jmdns/impl/HostInfo;->getDNS6ReverseAddressRecord(ZI)Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-result-object v0

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method getInet4Address()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInet6Address()Ljava/net/Inet6Address;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterface()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized incrementHostName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    .line 171
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const-string v3, ".local."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "plocal":I
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 173
    .local v1, "punder":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .end local v0    # "plocal":I
    :goto_0
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".local."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .restart local v0    # "plocal":I
    :cond_0
    move v0, v1

    .line 173
    goto :goto_0

    .line 170
    .end local v0    # "plocal":I
    .end local v1    # "punder":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 328
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 304
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 305
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method shouldIgnorePacket(Ljava/net/DatagramPacket;)Z
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "result":Z
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 181
    .local v0, "from":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const/4 v1, 0x1

    .line 195
    .end local v0    # "from":Ljava/net/InetAddress;
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "local host info["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    :cond_0
    const-string v1, "no name"

    goto :goto_0

    .line 261
    :cond_1
    const-string v1, "???"

    goto :goto_1

    .line 263
    :cond_2
    const-string v1, "no address"

    goto :goto_2
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 416
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 424
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForCanceled(J)Z

    move-result v0

    goto :goto_0
.end method
