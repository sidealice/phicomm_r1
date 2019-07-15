.class public Lcom/unisound/lib/audio/bean/CategoryBean;
.super Ljava/lang/Object;
.source "CategoryBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;
    }
.end annotation


# instance fields
.field private pageCount:Ljava/lang/String;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageCount()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/CategoryBean;->result:Ljava/util/List;

    return-object v0
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean;->pageCount:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/CategoryBean;->result:Ljava/util/List;

    return-void
.end method
