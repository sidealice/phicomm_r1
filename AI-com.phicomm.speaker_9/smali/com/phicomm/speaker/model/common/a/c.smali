.class public abstract Lcom/phicomm/speaker/model/common/a/c;
.super Lcom/phicomm/speaker/model/common/a/a;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/phicomm/speaker/model/common/a/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/model/common/a/g;",
            "TT;I)V"
        }
    .end annotation
.end method

.method protected b(Lcom/phicomm/speaker/model/common/a/g;I)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 28
    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/model/common/a/c;->a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/c;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/common/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
