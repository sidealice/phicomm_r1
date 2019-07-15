.class public Lcom/unisound/ant/device/bean/PhicommStatisticInfo;
.super Ljava/lang/Object;
.source "PhicommStatisticInfo.java"


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p4, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->msgId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->key:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->from:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->data:Ljava/util/HashMap;

    .line 27
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->data:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->from:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->key:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;->msgId:Ljava/lang/String;

    .line 35
    return-void
.end method
