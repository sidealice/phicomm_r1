.class public abstract Ljavax/jmdns/ServiceEvent;
.super Ljava/util/EventObject;
.source "ServiceEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x76c5b4f8185b11bfL


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "eventSource"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 29
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
    .line 12
    invoke-virtual {p0}, Ljavax/jmdns/ServiceEvent;->clone()Ljavax/jmdns/ServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/ServiceEvent;
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "exception":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getDNS()Ljavax/jmdns/JmDNS;
.end method

.method public abstract getInfo()Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
