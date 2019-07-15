.class final Lrx/internal/util/InternalObservableUtils$m;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b/e<",
        "Lrx/c/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/TimeUnit;

.field private final c:Lrx/f;

.field private final d:I

.field private final e:Lrx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/c;IJLjava/util/concurrent/TimeUnit;Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            ")V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    .line 346
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Lrx/f;

    .line 348
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    .line 349
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Lrx/c;

    return-void
.end method


# virtual methods
.method public a()Lrx/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Lrx/c;

    iget v1, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Lrx/f;

    invoke-virtual/range {v0 .. v5}, Lrx/c;->a(IJLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$m;->a()Lrx/c/a;

    move-result-object v0

    return-object v0
.end method
