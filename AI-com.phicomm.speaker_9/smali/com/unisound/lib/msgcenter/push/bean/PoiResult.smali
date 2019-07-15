.class public Lcom/unisound/lib/msgcenter/push/bean/PoiResult;
.super Ljava/lang/Object;
.source "PoiResult.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/push/bean/Result;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;
    }
.end annotation


# instance fields
.field fromPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;

.field toPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromPoi()Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult;->fromPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;

    return-object v0
.end method

.method public getToPoi()Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult;->toPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;

    return-object v0
.end method

.method public setFromPoi(Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult;->fromPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;

    return-void
.end method

.method public setToPoi(Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult;->toPoi:Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;

    return-void
.end method
