.class public Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscoveryImpl.java"

# interfaces
.implements Ljavax/jmdns/NetworkTopologyDiscovery;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final _isUp:Ljava/lang/reflect/Method;

.field private final _supportsMulticast:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    const-class v4, Ljava/net/NetworkInterface;

    const-string v5, "isUp"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    .local v1, "isUp":Ljava/lang/reflect/Method;
    :goto_0
    iput-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    .line 45
    :try_start_1
    const-class v4, Ljava/net/NetworkInterface;

    const-string v5, "supportsMulticast"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 50
    .local v2, "supportsMulticast":Ljava/lang/reflect/Method;
    :goto_1
    iput-object v2, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    .line 51
    return-void

    .line 38
    .end local v1    # "isUp":Ljava/lang/reflect/Method;
    .end local v2    # "supportsMulticast":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "isUp":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 46
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 48
    .restart local v0    # "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "supportsMulticast":Ljava/lang/reflect/Method;
    goto :goto_1
.end method


# virtual methods
.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 9

    .prologue
    .line 59
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "nifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 64
    .local v2, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "iaenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 66
    .local v1, "interfaceAddress":Ljava/net/InetAddress;
    sget-object v6, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    sget-object v6, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found NetworkInterface/InetAddress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 69
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "iaenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1    # "interfaceAddress":Ljava/net/InetAddress;
    .end local v2    # "nif":Ljava/net/NetworkInterface;
    .end local v3    # "nifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v5

    .line 75
    .local v5, "se":Ljava/net/SocketException;
    sget-object v6, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while fetching network interfaces addresses: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 77
    .end local v5    # "se":Ljava/net/SocketException;
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/net/InetAddress;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/net/InetAddress;

    return-object v6
.end method

.method public lockInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 121
    return-void
.end method

.method public unlockInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 130
    return-void
.end method

.method public useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "interfaceAddress"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 89
    :try_start_1
    iget-object v3, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 110
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v1

    .line 96
    :cond_0
    :try_start_2
    iget-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_1

    .line 98
    :try_start_3
    iget-object v3, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 105
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :catch_2
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move v1, v2

    .line 110
    goto :goto_0
.end method
