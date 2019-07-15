.class public Lcom/unisound/lib/audio/bean/AudioSecondList;
.super Ljava/lang/Object;
.source "AudioSecondList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;
    }
.end annotation


# instance fields
.field private pageCount:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList;->pageCount:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList;->result:Ljava/util/List;

    return-object v0
.end method

.method public setPageCount(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList;->pageCount:I

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList;->result:Ljava/util/List;

    return-void
.end method
