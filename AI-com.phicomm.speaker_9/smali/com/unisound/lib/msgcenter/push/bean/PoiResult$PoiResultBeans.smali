.class public Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;
.super Ljava/lang/Object;
.source "PoiResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/push/bean/PoiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiResultBeans"
.end annotation


# instance fields
.field count:Ljava/lang/String;

.field page:Ljava/lang/String;

.field page_size:Ljava/lang/String;

.field pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/push/bean/PoiServerBean;",
            ">;"
        }
    .end annotation
.end field

.field total:Ljava/lang/String;

.field totalTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getPage_size()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->page_size:Ljava/lang/String;

    return-object v0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/push/bean/PoiServerBean;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->pois:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->count:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->page:Ljava/lang/String;

    return-void
.end method

.method public setPage_size(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->page_size:Ljava/lang/String;

    return-void
.end method

.method public setPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/push/bean/PoiServerBean;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->pois:Ljava/util/List;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/PoiResult$PoiResultBeans;->totalTime:Ljava/lang/String;

    return-void
.end method
