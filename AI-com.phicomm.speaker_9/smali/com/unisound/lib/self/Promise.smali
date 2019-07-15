.class public Lcom/unisound/lib/self/Promise;
.super Ljava/lang/Object;
.source "Promise.java"


# instance fields
.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unisound/lib/self/Promise;->udid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/unisound/lib/self/Promise;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/unisound/lib/self/Promise;->udid:Ljava/lang/String;

    return-void
.end method
