.class public Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.super Ljava/lang/Object;
.source "BaseInfo.java"


# instance fields
.field tdid:Ljava/lang/String;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTdid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->tdid:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->udid:Ljava/lang/String;

    return-void
.end method
