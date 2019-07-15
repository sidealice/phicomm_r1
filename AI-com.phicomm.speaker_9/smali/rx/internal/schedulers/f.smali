.class public final Lrx/internal/schedulers/f;
.super Lrx/f;
.source "NewThreadScheduler.java"


# instance fields
.field private final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lrx/f;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/internal/schedulers/f;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public a()Lrx/f$a;
    .locals 2

    .line 33
    new-instance v0, Lrx/internal/schedulers/g;

    iget-object v1, p0, Lrx/internal/schedulers/f;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
