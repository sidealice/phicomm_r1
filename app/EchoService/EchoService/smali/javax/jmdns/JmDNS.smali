.class public abstract Ljavax/jmdns/JmDNS;
.super Ljava/lang/Object;
.source "JmDNS.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/JmDNS$Delegate;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "3.4.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static create()Ljavax/jmdns/JmDNS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDelegate()Ljavax/jmdns/JmDNS$Delegate;
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInterface()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract printServices()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerService(Ljavax/jmdns/ServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerServiceType(Ljava/lang/String;)Z
.end method

.method public abstract removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract setDelegate(Ljavax/jmdns/JmDNS$Delegate;)Ljavax/jmdns/JmDNS$Delegate;
.end method

.method public abstract unregisterAllServices()V
.end method

.method public abstract unregisterService(Ljavax/jmdns/ServiceInfo;)V
.end method
