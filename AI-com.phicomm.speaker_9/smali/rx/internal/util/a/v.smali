.class abstract Lrx/internal/util/a/v;
.super Lrx/internal/util/a/t;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/t<",
        "TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# instance fields
.field private volatile f:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lrx/internal/util/a/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final c()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lrx/internal/util/a/v;->f:J

    return-wide v0
.end method

.method protected final e(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lrx/internal/util/a/v;->f:J

    return-void
.end method
