.class public Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;
.super Ljava/lang/Object;
.source "TxNewsPlayInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    }
.end annotation


# instance fields
.field private query_raw:Ljava/lang/String;

.field private query_time:Ljava/lang/String;

.field private read_details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->read_details:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getQuery_raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_raw:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_time:Ljava/lang/String;

    return-object v0
.end method

.method public getRead_datails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->read_details:Ljava/util/List;

    return-object v0
.end method

.method public setQuery_raw(Ljava/lang/String;)V
    .locals 0
    .param p1, "query_raw"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_raw:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setQuery_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "query_time"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_time:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TxNewsPlayInfo{query_time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query_raw=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->query_raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", read_datails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->read_details:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
