.class final Lrx/internal/util/e$1;
.super Lrx/internal/util/b;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/b<",
        "Ljava/util/Queue<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lrx/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lrx/internal/util/e$1;->e()Lrx/internal/util/a/w;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lrx/internal/util/a/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/a/w<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Lrx/internal/util/a/w;

    sget v1, Lrx/internal/util/e;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/a/w;-><init>(I)V

    return-object v0
.end method
