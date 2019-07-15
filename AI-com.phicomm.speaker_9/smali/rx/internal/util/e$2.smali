.class final Lrx/internal/util/e$2;
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

    .line 275
    invoke-direct {p0}, Lrx/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lrx/internal/util/e$2;->e()Lrx/internal/util/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lrx/internal/util/a/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/a/o<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Lrx/internal/util/a/o;

    sget v1, Lrx/internal/util/e;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/a/o;-><init>(I)V

    return-object v0
.end method
