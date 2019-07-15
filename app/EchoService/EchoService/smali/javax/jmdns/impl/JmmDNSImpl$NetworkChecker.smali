.class Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;
.super Ljava/util/TimerTask;
.source "JmmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChecker"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _knownAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final _mmDNS:Ljavax/jmdns/NetworkTopologyListener;

.field private final _topology:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const-class v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyDiscovery;)V
    .locals 1
    .param p1, "mmDNS"    # Ljavax/jmdns/NetworkTopologyListener;
    .param p2, "topology"    # Ljavax/jmdns/NetworkTopologyDiscovery;

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 561
    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    .line 562
    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 563
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    .line 564
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 576
    :try_start_0
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    invoke-interface {v8}, Ljavax/jmdns/NetworkTopologyDiscovery;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    .line 577
    .local v2, "curentAddresses":[Ljava/net/InetAddress;
    new-instance v3, Ljava/util/HashSet;

    array-length v8, v2

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 578
    .local v3, "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    move-object v1, v2

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v1, v6

    .line 579
    .local v0, "address":Ljava/net/InetAddress;
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 581
    new-instance v5, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v5, v8, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 582
    .local v5, "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v8, v5}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 578
    .end local v5    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 586
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 587
    new-instance v5, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v5, v8, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 588
    .restart local v5    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v8, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v8, v5}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 592
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v2    # "curentAddresses":[Ljava/net/InetAddress;
    .end local v3    # "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    .end local v5    # "event":Ljavax/jmdns/NetworkTopologyEvent;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 593
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected unhandled exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 595
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 591
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v2    # "curentAddresses":[Ljava/net/InetAddress;
    .restart local v3    # "current":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "len$":I
    :cond_3
    :try_start_1
    iput-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public start(Ljava/util/Timer;)V
    .locals 6
    .param p1, "timer"    # Ljava/util/Timer;

    .prologue
    .line 567
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 568
    return-void
.end method
