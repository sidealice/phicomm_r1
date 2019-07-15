.class public Lnluparser/scheme/MusicResult;
.super Ljava/lang/Object;
.source "MusicResult.java"

# interfaces
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/MusicResult$Music;
    }
.end annotation


# instance fields
.field count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "count"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field dataSourceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dataSourceName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataSourceName"
    .end annotation
.end field

.field errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field musicinfo:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicinfo"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field searchType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "searchType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchType"
    .end annotation
.end field

.field updateTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "updateTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/MusicResult;->musicinfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 27
    iget v0, p0, Lnluparser/scheme/MusicResult;->count:I

    return v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lnluparser/scheme/MusicResult;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 39
    iget v0, p0, Lnluparser/scheme/MusicResult;->errorCode:I

    return v0
.end method

.method public getMusicinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lnluparser/scheme/MusicResult;->musicinfo:Ljava/util/List;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lnluparser/scheme/MusicResult;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lnluparser/scheme/MusicResult;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 47
    iput p1, p0, Lnluparser/scheme/MusicResult;->count:I

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lnluparser/scheme/MusicResult;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 59
    iput p1, p0, Lnluparser/scheme/MusicResult;->errorCode:I

    return-void
.end method

.method public setMusicinfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lnluparser/scheme/MusicResult;->musicinfo:Ljava/util/List;

    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lnluparser/scheme/MusicResult;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lnluparser/scheme/MusicResult;->updateTime:Ljava/lang/String;

    return-void
.end method
