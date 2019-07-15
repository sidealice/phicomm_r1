.class final Lrx/internal/schedulers/a$c;
.super Lrx/internal/schedulers/g;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 241
    invoke-direct {p0, p1}, Lrx/internal/schedulers/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lrx/internal/schedulers/a$c;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 250
    iput-wide p1, p0, Lrx/internal/schedulers/a$c;->c:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lrx/internal/schedulers/a$c;->c:J

    return-wide v0
.end method
