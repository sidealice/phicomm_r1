.class public Lcom/unisound/lib/news/bean/CurrentNewsList;
.super Ljava/lang/Object;
.source "CurrentNewsList.java"


# instance fields
.field private newsList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/unisound/lib/news/bean/CurrentNewsList;->newsList:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/unisound/lib/news/bean/CurrentNewsList;->pageCount:I

    return v0
.end method

.method public setNewsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/unisound/lib/news/bean/CurrentNewsList;->newsList:Ljava/util/List;

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/unisound/lib/news/bean/CurrentNewsList;->pageCount:I

    return-void
.end method
