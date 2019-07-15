.class public Lnluparser/scheme/NewsResult;
.super Ljava/lang/Object;
.source "NewsResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/NewsResult$NewsBean;
    }
.end annotation


# instance fields
.field private count:I

.field private dataSourceName:Ljava/lang/String;

.field private errorCode:I

.field private news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;"
        }
    .end annotation
.end field

.field private searchType:Ljava/lang/String;

.field private totalTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 20
    iget v0, p0, Lnluparser/scheme/NewsResult;->count:I

    return v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lnluparser/scheme/NewsResult;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 28
    iget v0, p0, Lnluparser/scheme/NewsResult;->errorCode:I

    return v0
.end method

.method public getNews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lnluparser/scheme/NewsResult;->news:Ljava/util/List;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnluparser/scheme/NewsResult;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .line 52
    iget v0, p0, Lnluparser/scheme/NewsResult;->totalTime:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 24
    iput p1, p0, Lnluparser/scheme/NewsResult;->count:I

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 32
    iput p1, p0, Lnluparser/scheme/NewsResult;->errorCode:I

    return-void
.end method

.method public setNews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->news:Ljava/util/List;

    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    .line 56
    iput p1, p0, Lnluparser/scheme/NewsResult;->totalTime:I

    return-void
.end method
