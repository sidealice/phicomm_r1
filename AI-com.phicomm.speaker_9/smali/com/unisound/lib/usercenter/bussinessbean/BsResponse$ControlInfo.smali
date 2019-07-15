.class public Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field info:Lcom/google/gson/k;

.field tdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInfo()Lcom/google/gson/k;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;->info:Lcom/google/gson/k;

    return-object v0
.end method


# virtual methods
.method public getEntity(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-direct {p0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;->getInfo()Lcom/google/gson/k;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/d;->a(Lcom/google/gson/i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTdid()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse$ControlInfo;->tdid:Ljava/lang/String;

    return-void
.end method
