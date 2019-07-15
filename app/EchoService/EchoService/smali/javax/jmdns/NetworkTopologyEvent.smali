.class public abstract Ljavax/jmdns/NetworkTopologyEvent;
.super Ljava/util/EventObject;
.source "NetworkTopologyEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x77c409c39fc6073bL


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "eventSource"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract getDNS()Ljavax/jmdns/JmDNS;
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
.end method
