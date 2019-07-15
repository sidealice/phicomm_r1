.class public Lcom/unisound/lib/cook/bean/CookBookInfo;
.super Ljava/lang/Object;
.source "CookBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;
    }
.end annotation


# instance fields
.field private cookBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/String;

.field private dataSourceName:Ljava/lang/String;

.field private errorCode:I

.field private source:Ljava/lang/String;

.field private totalTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->cookBooks:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->errorCode:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->totalTime:I

    return v0
.end method

.method public setCookBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->cookBooks:Ljava/util/List;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->count:Ljava/lang/String;

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->errorCode:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->source:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo;->totalTime:I

    return-void
.end method
