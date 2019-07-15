.class public Lnluparser/scheme/CookBookResult;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/CookBookResult$CookBook;
    }
.end annotation


# instance fields
.field cookBooks:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cookBooks"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cookBooks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/CookBookResult$CookBook;",
            ">;"
        }
    .end annotation
.end field

.field count:Ljava/lang/String;
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

.field source:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "source"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field totalTime:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "totalTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/CookBookResult$CookBook;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/CookBookResult;->cookBooks:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/CookBookResult;->errorCode:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/CookBookResult;->totalTime:I

    return v0
.end method

.method public setCookBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/CookBookResult$CookBook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cookBooks":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/CookBookResult$CookBook;>;"
    iput-object p1, p0, Lnluparser/scheme/CookBookResult;->cookBooks:Ljava/util/List;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult;->count:Ljava/lang/String;

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSourceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/CookBookResult;->errorCode:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult;->source:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/CookBookResult;->totalTime:I

    return-void
.end method
