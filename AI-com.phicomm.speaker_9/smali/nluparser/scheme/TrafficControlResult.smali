.class public Lnluparser/scheme/TrafficControlResult;
.super Ljava/lang/Object;
.source "TrafficControlResult.java"

# interfaces
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/TrafficControlResult$TrafficControlInfo;
    }
.end annotation


# instance fields
.field city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field errorCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field local:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "local"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local"
    .end annotation
.end field

.field nonlocal:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nonlocal"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonlocal"
    .end annotation
.end field

.field trafficControlInfos:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "trafficControlInfos"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trafficControlInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnluparser/scheme/TrafficControlResult$TrafficControlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/TrafficControlResult;->trafficControlInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lnluparser/scheme/TrafficControlResult;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lnluparser/scheme/TrafficControlResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lnluparser/scheme/TrafficControlResult;->local:Ljava/lang/String;

    return-object v0
.end method

.method public getNonlocal()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnluparser/scheme/TrafficControlResult;->nonlocal:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficControlInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/TrafficControlResult$TrafficControlInfo;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lnluparser/scheme/TrafficControlResult;->trafficControlInfos:Ljava/util/List;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lnluparser/scheme/TrafficControlResult;->city:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnluparser/scheme/TrafficControlResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setLocal(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lnluparser/scheme/TrafficControlResult;->local:Ljava/lang/String;

    return-void
.end method

.method public setNonlocal(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lnluparser/scheme/TrafficControlResult;->nonlocal:Ljava/lang/String;

    return-void
.end method

.method public setTrafficControlInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/TrafficControlResult$TrafficControlInfo;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lnluparser/scheme/TrafficControlResult;->trafficControlInfos:Ljava/util/List;

    return-void
.end method
