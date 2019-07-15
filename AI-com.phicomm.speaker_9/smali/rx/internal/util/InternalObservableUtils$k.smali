.class final Lrx/internal/util/InternalObservableUtils$k;
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
    name = "k"
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
.field private final a:Ljava/util/concurrent/TimeUnit;

.field private final b:Lrx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Lrx/f;


# direct methods
.method constructor <init>(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            ")V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Lrx/c;

    .line 308
    iput-wide p2, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    .line 309
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Lrx/f;

    return-void
.end method


# virtual methods
.method public a()Lrx/c/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Lrx/c;

    iget-wide v1, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    iget-object v3, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Lrx/f;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/c;->a(JLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lrx/internal/util/InternalObservableUtils$k;->a()Lrx/c/a;

    move-result-object v0

    return-object v0
.end method
