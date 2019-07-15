.class public Ljavax/jmdns/impl/ServiceEventImpl;
.super Ljavax/jmdns/ServiceEvent;
.source "ServiceEventImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x62a498597d29f1d0L


# instance fields
.field private final _info:Ljavax/jmdns/ServiceInfo;

.field private final _name:Ljava/lang/String;

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .locals 0
    .param p1, "jmDNS"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "info"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljavax/jmdns/ServiceEvent;-><init>(Ljava/lang/Object;)V

    .line 52
    iput-object p2, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->clone()Ljavax/jmdns/impl/ServiceEventImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceEvent;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->clone()Ljavax/jmdns/impl/ServiceEventImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceEventImpl;
    .locals 5

    .prologue
    .line 120
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    .line 121
    .local v0, "newInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v2
.end method

.method public getDNS()Ljavax/jmdns/JmDNS;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/JmDNS;

    return-object v0
.end method

.method public getInfo()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\n\tname: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\' type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "\' info: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
